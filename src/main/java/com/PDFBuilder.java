package com;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

/**
 * This view class generates a PDF document 'on the fly' based on the data
 * contained in the model.
 * 
 * @author www.codejava.net
 *
 */
public class PDFBuilder extends AbstractITextPdfView {

	@SuppressWarnings("unchecked")
	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document doc, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {

		// get data model which is passed by the Spring container
		List<Student> student = (List<Student>) model.get("listPDF");

		doc.add(new Paragraph("Student Record"));
		java.util.Date date = new java.util.Date();
		doc.add(new Paragraph("Date:-" + date));
		PdfPTable table = new PdfPTable(11);
		table.setWidthPercentage(110.0f);

		// table.setWidths(new float[] { 3.0f, 2.0f, 2.0f, 2.0f, 1.0f });
		table.setSpacingBefore(15);

		// define font for table header row
		Font font = FontFactory.getFont(FontFactory.HELVETICA);
		font.setColor(BaseColor.WHITE);

		// define table header cell
		PdfPCell cell = new PdfPCell();
		cell.setBackgroundColor(BaseColor.RED);

		// cell.setPadding(11);

		// write table header

		cell.setPhrase(new Phrase("Image", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("First Name", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Last Name", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Gender", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Address One", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Address Two", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("State", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("City", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Post Code", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Country", font));
		table.addCell(cell);

		cell.setPhrase(new Phrase("Date OF Birth", font));
		table.addCell(cell);

		// write table row data
		for (Student students : student) {

			table.addCell(students.getFilename());
			table.addCell(students.getFirstName());
			table.addCell(students.getLastName());
			table.addCell(students.getGender());
			table.addCell(students.getAddressOne());
			table.addCell(students.getAddressTwo());
			table.addCell(students.getState());
			table.addCell(students.getCity());
			table.addCell(students.getPostcode());
			table.addCell(students.getCountry());
			table.addCell(students.getDateOfBirth());
		}

		doc.add(table);
	}

}