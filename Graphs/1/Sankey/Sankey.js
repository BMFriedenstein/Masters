 google.charts.load('current', {
        'packages': ['sankey']
      });
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'From');
        data.addColumn('string', 'To');
        data.addColumn('number', 'Weight');
		//Input Data
		//eg. ['Node1', 'Node1', Proportion](Node1 -> Node2) :
        data.addRows([
          ['Total energy', 'Compressed air 17%', 17],
          ['Total energy', 'Cooling systems 5%', 5],
          ['Total energy', 'Dewatering \n 14%', 14],
          ['Total energy', 'Ventilation 7%', 7],
          ['Total energy', 'Lighting 5%', 5],
          ['Total energy', 'Material handeling 23%', 23],
          ['Total energy', 'Processing 19%', 19],
          ['Total energy', 'Other 10%', 10],
        ]);

        // Sets chart Colors.
        var colors = ['#7297E6', '#67EB84', '#F97A6D', '#F9C96D',
          '#1D4599', '#11AD34', '#E62B17', '#E69F17','#2F3F60', '#2F6C3D', '#8F463F', '#F9C96D',
          '#1D4599', '#11AD34', '#E62B17', '#E69F17'
        ];
		// Sets chart Options.
        var options = {
          sankey: {
			  // Node Shpe
            node: {
				interactivity:false,
				nodePadding: 100, //Distace between nodes
				// Node Text
              label: {
                fontName: 'Old Standard TT',
                fontSize: 122,
              },
              colors: colors
            },
            link: {
              colorMode: 'gradient', // How color is implemented
              colors: colors
            }
          }
        };


        // Instantiates and draws our chart, passing in some options.
        var chart = new google.visualization.Sankey(document.getElementById('sankey_basic'));
        chart.draw(data, options);
        console.log(chart);
      }