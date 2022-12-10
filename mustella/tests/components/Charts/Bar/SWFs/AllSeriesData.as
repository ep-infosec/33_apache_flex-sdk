package {

	import mx.charts.*;
	import mx.charts.series.*;


	public class AllSeriesData  { 


		public static function setDefault (which:String, chart:Object):void 
		{

			var arr:Array = new Array();
			var myBarSet:BarSet = new BarSet();
			var myArray: Array = new Array();

	
			switch(which)
			{
			case "area": 
				var a:AreaSeries = new AreaSeries();	
				a.yField = "close";
				arr.push(a);
				break;
			case "bar": 
				var b:BarSeries = new BarSeries();	
				b.xField = "close";
				arr.push(b);
				break;
			case "column":
				var c:ColumnSeries = new ColumnSeries();	
				c.yField = "close";
				arr.push(c);
				break;
			case "candlestick": 
				var d:CandlestickSeries = new CandlestickSeries();	
				d.closeField = "close";
				d.openField = "open";
				d.highField = "high";
				d.lowField = "low";
				arr.push(d);
				break;
			case "line":
				var f:LineSeries = new LineSeries();	
				f.yField = "close";
				arr.push(f);
				break;
			case "plot": 
				var g:PlotSeries = new PlotSeries();	
				g.yField = "close";
				arr.push(g);
				break;
			case "bubble":
				var g1:BubbleSeries = new BubbleSeries();	
				g1.radiusField = "low";
				g1.yField = "close";
				arr.push(g1);
				break;
			case "pie":
				var h:PieSeries = new PieSeries();	
				h.field = "close";
				arr.push(h);
				break;
			case "column_multiple": 
				var goldcol:ColumnSeries = new ColumnSeries();	
				goldcol.yField = "Gold";
				arr.push(goldcol);

				var silvercol:ColumnSeries = new ColumnSeries();	
				silvercol.yField = "Silver";
				arr.push(silvercol);

				var bronzecol:ColumnSeries = new ColumnSeries();	
				bronzecol.yField = "Bronze";
				arr.push(bronzecol);
				break;
			case "bar_multiple": 
				var goldbar:BarSeries = new BarSeries();	
				goldbar.xField = "Gold";
				arr.push(goldbar);

				var silverbar:BarSeries = new BarSeries();	
				silverbar.xField = "Silver";
				arr.push(silverbar);

				var bronzebar:BarSeries = new BarSeries();	
				bronzebar.xField = "Bronze";
				arr.push(bronzebar);
				break;
			case "pie_multiple": 
				var goldpie:PieSeries = new PieSeries();	
				goldpie.field = "Gold";
				goldpie..setStyle("labelPosition","outside");
				goldpie.nameField="Country";
				arr.push(goldpie);

				var silverpie:PieSeries = new PieSeries();	
				silverpie.field = "Silver";
				silverpie.setStyle("labelPosition","inside");
				silverpie.nameField="Country";
				arr.push(silverpie);

				var bronzepie:PieSeries = new PieSeries();	
				bronzepie.field = "Bronze";
				bronzepie..setStyle("labelPosition","callout");
				bronzepie.nameField="Country";
				arr.push(bronzepie);
				break;
			case "bar_with_line":
				//this case is added as part of regression test. FLEXDMV-1251
				var closebar:BarSeries = new BarSeries();	
				closebar.xField = "close";
				arr.push(closebar);

				var openbar:BarSeries = new BarSeries();	
				openbar.xField = "open";
				arr.push(openbar);

				var highbar:LineSeries = new LineSeries();	
				highbar.yField = "high";
				arr.push(highbar);
				break;
			
			case "bar_multiple_barset":
				var closeSeries:BarSeries = new BarSeries();	
				closeSeries.xField = "close";
				myArray.push(closeSeries);
				myBarSet.series = myArray;
				myBarSet.type = "stacked";				

				var openSeries:BarSeries = new BarSeries();	
				openSeries.xField = "open";
				myArray.push(openSeries)
				myBarSet.series = myArray;	

				arr.push(myBarSet);
				break;
			
			case "bar_barset":
				var closeBar:BarSeries = new BarSeries();				
				closeBar.xField = "close";
				myArray.push(closeBar)
				myBarSet.series = myArray;
				arr.push(myBarSet);
				break;
				
			default:
				break;
			}
		

			chart.series = arr;

		}
		public static function setAxisFields (which:String,chart:Object):void 
		{
			var cataxis:CategoryAxis =  new CategoryAxis();
			cataxis.categoryField = "Country";
			switch(which)
			{
				case "column":
					chart.horizontalAxis = cataxis;
					break;
				case "bar":
					chart.verticalAxis = cataxis;
					break;
				default:
					break;
			}
		}


	}

}


