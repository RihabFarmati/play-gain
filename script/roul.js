
$(document).ready(function () {
    $.ajax({
        url: 'controller/icone.php',
        data: { op: '' },
        type: 'POST',
        success: function (data, textStatus, jqXHR) {
           
            remplir(data);

        },
        error: function (jqXHR, textStatus, errorThrown) {
            console.log(textStatus);
        }
    });

    // la fonction remplir

    function remplir(data) {
        var padding = { top: 20, right: 40, bottom: 0, left: 0 },
            w = 500 - padding.left - padding.right,
            h = 500 - padding.top - padding.bottom,
            r = Math.min(w, h) / 2,
            rotation = 0,
            oldrotation = 0,
            picked = 100000,
            oldpick = [],
            total = 0;
        color = ['#c1adea', '#9370DB', "#c1adea", "#c1adea", '#9370DB', "#c1adea", "#c1adea", '#9370DB', "#c1adea", '#9370DB'];

        $.ajax({
            url: 'controller/user.php',
            data: { op: 'find' },
            type: 'POST',
            success: function (data2, textStatus, jqXHR) {
                //var data2 = JSON.stringify(data2);
                //  alert(data2[0].date);
                s(data2);

            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.log(errorThrown);
            }
        });

        var svg = d3.select('#chart')
            .append("svg")
            .data([data])
            .attr("width", w + padding.left + padding.right)
            .attr("height", h + padding.top + padding.bottom);
        var container = svg.append("g")
            .attr("class", "chartholder")
            .attr("transform", "translate(" + (w / 2 + padding.left) + "," + (h / 2 + padding.top) + ")");
        var vis = container
            .append("g");

        var pie = d3.layout.pie().sort(null).value(function (d) { return 1; });
        // declare an arc generator function
        var arc = d3.svg.arc().outerRadius(r);
        // select paths, use arc generator to draw
        var arcs = vis.selectAll("g.slice")
            .data(pie)
            .enter()
            .append("g")
            .attr("class", "slice");
        //add the arc
        arcs.append("path")
            .attr("fill", function (d, i) { return color[i]; })
            .attr("d", function (d) { return arc(d); });
        // add the text
        arcs.append("text").attr("transform", function (d) {
            d.innerRadius = 0;
            d.outerRadius = r;
            d.angle = (d.startAngle + d.endAngle) / 2;
            return "rotate(" + (d.angle * 180 / Math.PI - 90) + ")translate(" + (d.outerRadius - 10) + ")";
        })
            .attr("text-anchor", "end")
            .text(function (d, i) {

                return data[i].label;

            });
        container.on("click", spin);
        //******************** */
        function s(data2) {
            var today = new Date();
            var date = today.toJSON().slice(0, 10);
            var mDate = date.slice(0, 4) + '-'
                + date.slice(5, 7) + '-'
                + (Number(date.slice(8, 10)) - 1);
           // alert(data2[0].date + "       " + date);
            //alert(data2[0].date<date)
            if (data2[0].date<date) {
                $("#c").html(3);
                Swal.fire('Tournez et Testez Votre Chance !!', 'Vous Pouvez Jouer maintenant ');
                oldpick.length = 0;
                container.on("click", spin);
                arcs.append("path")
                    .attr("fill", function (d, i) { return color[i]; })
                    .attr("d", function (d) { return arc(d); });
                arcs.append("text").attr("transform", function (d) {
                    d.innerRadius = 0;
                    d.outerRadius = r;
                    d.angle = (d.startAngle + d.endAngle) / 2;
                    return "rotate(" + (d.angle * 180 / Math.PI - 90) + ")translate(" + (d.outerRadius - 10) + ")";
                })
                    .attr("text-anchor", "end")
                    .text(function (d, i) {
                        return data[i].label;
                    });

            } else {
                oldpick.length = 3;
                var today = new Date();
                var date = today.toJSON().slice(0, 10);
                var mDate = date.slice(0, 4) + '-'
                    + date.slice(5, 7) + '-'
                    + date.slice(8, 10);
                Swal.fire('Oops...', 'Vous avez utilisé toute vous chance .Rejouer le : ' + mDate, 'error');
                //alert("etendez "+mDate);
                container.on("click", null);
            }
        }
        function spin(d) {
            container.on("click", null);
            if(3-1-oldpick.length!=-1){
            $("#c").html(3-1-oldpick.length);}

            //all slices have been seen, all done
            console.log("OldPick: " + oldpick + "::" + oldpick.length, "Data length: " + data.length);
            
            if (oldpick.length == 3) {
                console.log("done");
                console.log(total);
                Swal.fire('Oops...', 'Vous avez utilisé toute vous chance .Rejouer Demain ', 'error');
                container.on("click", null);
                var $solde = total;

                $.ajax({
                    url: 'controller/user.php',
                    data: { op: 'update', solde: $solde },
                    type: 'POST',
                    success: function (data, textStatus, jqXHR) {
                        //remplir(data) ;


                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(textStatus);
                    }
                });

                //console.log(setTimeout(s, 5000));
                //setTimeout(s, 5000)
                return;
            }
            var ps = 360 / data.length,
                pieslice = Math.round(1440 / data.length),
                rng = Math.floor((Math.random() * 1440) + 360);

            rotation = (Math.round(rng / ps) * ps);

            picked = Math.round(data.length - (rotation % 360) / ps);
            picked = picked >= data.length ? (picked % data.length) : picked;
            if (oldpick.indexOf(picked) !== -1) {
                d3.select(this).call(spin);
                return;
            } else {
                oldpick.push(picked);
                //  data2.length+=1;            
            }
            rotation += 90 - Math.round(ps / 2);
            // le son du roulette
            // l'audio son.mp3

            var audio = new Audio('spin.mp3');
            audio.play();
            vis.transition()
                .duration(4000)
                .attrTween("transform", rotTween)
                .each("end", function () {
                    //mark question as seen
                    d3.select(".slice:nth-child(" + (picked + 1) + ") path")
                        .attr("fill", "#111");
                    //populate question
                    if (data[picked].question == "Ressayer Encore") {
                        var fail = new Audio('fail.mp3');
                        fail.play();
                        Swal.fire('Play&Gain', data[picked].question, 'error');
                    }

                    else {
                        var victory = new Audio('victory.mp3');
                        victory.play();
                        Swal.fire('Play&Gain', data[picked].question, 'success');}
                    total = total + Number(data[picked].point);
                    $("#gain").html(total);
                    //so=0;
                    //so=Number($("#so").val())+total
                    //$("#so").html(so);
                    console.log(data[picked].point);
                    
                    var $p = Number(data[picked].point);

                    
                    /* Comment the below line for restrict spin to sngle time */
                    audio.pause();
                    container.on("click", spin);
                });
        }
        //make arrow
        svg.append("g")
            .attr("transform", "translate(" + (w + padding.left + padding.right) + "," + ((h / 2) + padding.top) + ")")
            .append("path")
            .attr("d", "M-" + (r * .15) + ",0L0," + (r * .05) + "L0,-" + (r * .05) + "Z")
            .style({ "fill": "black" });
        //draw spin circle
        container.append("circle")
            .attr("cx", 0)
            .attr("cy", 0)
            .attr("r", 60)
            .style({ "fill": "white", "cursor": "pointer" });
        //spin text
        container.append("text")
            .attr("x", 0)
            .attr("y", 15)
            .attr("text-anchor", "middle")
            .text("Play&Win")
            .style({ "font-weight": "bold", "font-size": "20px" });


        function rotTween(to) {
            var i = d3.interpolate(oldrotation % 360, rotation);
            return function (t) {
                return "rotate(" + i(t) + ")";
            };
        }


        function getRandomNumbers() {
            var array = new Uint16Array(1000);
            var scale = d3.scale.linear().range([360, 1440]).domain([0, 100000]);
            if (window.hasOwnProperty("crypto") && typeof window.crypto.getRandomValues === "function") {
                window.crypto.getRandomValues(array);
                console.log("works");
            } else {
                //no support for crypto, get crappy random numbers
                for (var i = 0; i < 1000; i++) {
                    array[i] = Math.floor(Math.random() * 100000) + 1;
                }
            }
            return array;
        }
    }
});