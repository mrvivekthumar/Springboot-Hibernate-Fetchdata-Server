package com.vivek.location.util;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.stereotype.Component;

@Component
public class ReportUtilImpl implements ReportUtil {

	@Override
	public void genrratePieChart(String path, List<Object[]> data) {

		DefaultPieDataset dataset = new DefaultPieDataset();

		for (Object[] objects : data) {
			dataset.setValue(objects[0].toString(), new Double(objects[1].toString()));
		}

		JFreeChart chart = ChartFactory.createPieChart3D("Location Type report", dataset, false, false, false);

		try {
			ChartUtilities.saveChartAsJPEG(new File(path+ "/pieChart.jpeg"), chart, 250, 250);
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
