﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teachAssmntForm.aspx.cs" Inherits="DBProj.teachAssmntForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Evaluation Form</title>
	<link rel="stylesheet" type="text/css" href="pagesCSS.css">
</head>
<body>
    <header class="header">FLEX</header>

    <form id="form1" runat="server">
	<div class="container">
		<div class="nav-sidebar">
			<ul>
				<li><a href="coursereg.aspx">Registered Courses</a></li>
				<li><a href="studentattendance.aspx">Attendance</a></li>
				<li><a href="evaluations.aspx">Evaluations</a></li>
				<li><a href="transcript.aspx">Transcript</a></li>
				<li><a href="teachAssmntForm.aspx">Teacher Eval Form</a></li>
				<li><a href="signInPortal.aspx">Sign Out</a></li>
			</ul>
		</div>

    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httal htvam">
            <h2 id="header_1" class="form-header" data-component="header">Teachers Assessment Form</h2>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_datetime" id="id_16"><label class="form-label form-label-top form-label-auto" id="label_16" for="lite_mode_16"> Date </label>
        <div id="cid_16" class="form-input-wide">
          <div data-wrapper-react="true">
            <div style="display:none"><span class="form-sub-label-container" style="vertical-align:top"><input type="tel" class="form-textbox validate[limitDate]" id="month_16" name="q16_date[month]" size="2" data-maxlength="2" data-age="" maxlength="2" value="" autocomplete="off" aria-labelledby="label_16 sublabel_16_month"><span class="date-separate" aria-hidden="true">&nbsp;-</span><label class="form-sub-label" for="month_16" id="sublabel_16_month" style="min-height:13px" aria-hidden="false">Month</label></span><span class="form-sub-label-container" style="vertical-align:top"><input type="tel" class="form-textbox validate[limitDate]" id="day_16" name="q16_date[day]" size="2" data-maxlength="2" data-age="" maxlength="2" value="" autocomplete="off" aria-labelledby="label_16 sublabel_16_day"><span class="date-separate" aria-hidden="true">&nbsp;-</span><label class="form-sub-label" for="day_16" id="sublabel_16_day" style="min-height:13px" aria-hidden="false">Day</label></span><span class="form-sub-label-container" style="vertical-align:top"><input type="tel" class="form-textbox validate[limitDate]" id="year_16" name="q16_date[year]" size="4" data-maxlength="4" data-age="" maxlength="4" value="" autocomplete="off" aria-labelledby="label_16 sublabel_16_year"><label class="form-sub-label" for="year_16" id="sublabel_16_year" style="min-height:13px" aria-hidden="false">Year</label></span></div><span class="form-sub-label-container" style="vertical-align:top"><input type="text" class="form-textbox validate[limitDate, validateLiteDate]" id="lite_mode_16" size="12" data-maxlength="12" maxlength="12" data-age="" value="" data-format="mmddyyyy" data-seperator="-" placeholder="mm-dd-yyyy" autocomplete="off" aria-labelledby="label_16 sublabel_16_litemode"><img class=" newDefaultTheme-dateIcon icon-liteMode" alt="Pick a Date" id="input_16_pick" src="https://cdn.jotfor.ms/images/calendar.png" data-component="datetime" aria-hidden="true" data-allow-time="No" data-version="v1"><label class="form-sub-label" for="lite_mode_16" id="sublabel_16_litemode" style="min-height:13px" aria-hidden="false">Date</label></span>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_fullname" id="id_3"><label class="form-label form-label-top form-label-auto" id="label_3" for="first_3"> Name of Teacher </label>
        <div id="cid_3" class="form-input-wide">
          <div data-wrapper-react="true"><span class="form-sub-label-container" style="vertical-align:top" data-input-type="first"><input type="text" id="first_3" name="q3_nameOf[first]" class="form-textbox" data-defaultvalue="" autocomplete="section-input_3 given-name" size="10" value="" data-component="first" aria-labelledby="label_3 sublabel_3_first"><label class="form-sub-label" for="first_3" id="sublabel_3_first" style="min-height:13px" aria-hidden="false">First Name</label></span><span class="form-sub-label-container" style="vertical-align:top" data-input-type="last"><input type="text" id="last_3" name="q3_nameOf[last]" class="form-textbox" data-defaultvalue="" autocomplete="section-input_3 family-name" size="15" value="" data-component="last" aria-labelledby="label_3 sublabel_3_last"><label class="form-sub-label" for="last_3" id="sublabel_3_last" style="min-height:13px" aria-hidden="false">Last Name</label></span></div>
        </div>
      </li>
      <li class="form-line" data-type="control_divider" id="id_10">
        <div id="cid_10" class="form-input-wide">
          <div class="divider" data-component="divider" style="border-bottom-width:1px;border-bottom-style:solid;border-color:#e6e6e6;height:1px;margin-left:0px;margin-right:0px;margin-top:5px;margin-bottom:5px"></div>
        </div>
      </li>
      <li class="form-line form-line-column form-col-1" data-type="control_textbox" id="id_4"><label class="form-label form-label-top form-label-auto" id="label_4" for="input_4"> Subject </label>
        <div id="cid_4" class="form-input-wide"> <input type="text" id="input_4" name="q4_subject" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_4"> </div>
      </li>
      <li class="form-line form-line-column form-col-2" data-type="control_textbox" id="id_5"><label class="form-label form-label-top form-label-auto" id="label_5" for="input_5"> Schedule </label>
        <div id="cid_5" class="form-input-wide"> <input type="text" id="input_5" name="q5_schedule" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_5"> </div>
      </li>
      <li class="form-line form-line-column form-col-3" data-type="control_textbox" id="id_6"><label class="form-label form-label-top form-label-auto" id="label_6" for="input_6"> Room Number </label>
        <div id="cid_6" class="form-input-wide"> <input type="text" id="input_6" name="q6_roomNumber" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_6"> </div>
      </li>
      <li class="form-line form-line-column form-col-4" data-type="control_textbox" id="id_8"><label class="form-label form-label-top form-label-auto" id="label_8" for="input_8"> School year </label>
        <div id="cid_8" class="form-input-wide"> <input type="text" id="input_8" name="q8_schoolYear" data-type="input-textbox" class="form-textbox" data-defaultvalue="" size="20" value="" data-component="textbox" aria-labelledby="label_8"> </div>
      </li>
      <li class="form-line" data-type="control_text" id="id_9">
        <div id="cid_9" class="form-input-wide">
          <div id="text_9" class="form-html" data-component="text" tabindex="0">
            <p><strong>Please fill out the form in evaluating your instructor for the semester. After completion, please press the submit button.</strong></p>
            <p><strong>For reference, the metric are as follows:</strong></p>
            <p style="padding-left:30px;">1&nbsp; - Poor<br>2 -&nbsp;Below Average<br>3 - Average<br>4 - Good<br>5 - Excellent</p>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_divider" id="id_7">
        <div id="cid_7" class="form-input-wide">
          <div class="divider" data-component="divider" style="border-bottom-width:1px;border-bottom-style:solid;border-color:#e6e6e6;height:1px;margin-left:0px;margin-right:0px;margin-top:5px;margin-bottom:5px"></div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_matrix" id="id_11"><label class="form-label form-label-top" id="label_11" for="input_11"> Appearance and Personal Presentation<span class="form-required">*</span> </label>
        <div id="cid_11" class="form-input-wide jf-required">
          <table summary="" aria-labelledby="label_11" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
            <tbody><tr class="form-matrix-tr form-matrix-header-tr">
              <th class="form-matrix-th" style="border:none">&nbsp;</th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0"><label id="label_11_col_0">1</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1"><label id="label_11_col_1">2</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2"><label id="label_11_col_2">3</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3"><label id="label_11_col_3">4</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4"><label id="label_11_col_4">5</label></th>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_0">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_11_row_0">Teacher attends class in a well presentable manner</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_11_0_0" class="form-radio" name="q11_appearanceAnd11[0]" value="1" aria-labelledby="label_11_col_0 label_11_row_0" aria-label="Cells Radio Button"><label for="input_11_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_0_1" class="form-radio" name="q11_appearanceAnd11[0]" value="2" aria-labelledby="label_11_col_1 label_11_row_0" aria-label="Cells Radio Button"><label for="input_11_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_0_2" class="form-radio" name="q11_appearanceAnd11[0]" value="3" aria-labelledby="label_11_col_2 label_11_row_0" aria-label="Cells Radio Button"><label for="input_11_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_0_3" class="form-radio" name="q11_appearanceAnd11[0]" value="4" aria-labelledby="label_11_col_3 label_11_row_0" aria-label="Cells Radio Button"><label for="input_11_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_0_4" class="form-radio" name="q11_appearanceAnd11[0]" value="5" aria-labelledby="label_11_col_4 label_11_row_0" aria-label="Cells Radio Button"><label for="input_11_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_1">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_11_row_1">Teacher shows enthusiasm when teaching in class</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_11_1_0" class="form-radio" name="q11_appearanceAnd11[1]" value="1" aria-labelledby="label_11_col_0 label_11_row_1" aria-label="Cells Radio Button"><label for="input_11_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_1_1" class="form-radio" name="q11_appearanceAnd11[1]" value="2" aria-labelledby="label_11_col_1 label_11_row_1" aria-label="Cells Radio Button"><label for="input_11_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_1_2" class="form-radio" name="q11_appearanceAnd11[1]" value="3" aria-labelledby="label_11_col_2 label_11_row_1" aria-label="Cells Radio Button"><label for="input_11_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_1_3" class="form-radio" name="q11_appearanceAnd11[1]" value="4" aria-labelledby="label_11_col_3 label_11_row_1" aria-label="Cells Radio Button"><label for="input_11_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_1_4" class="form-radio" name="q11_appearanceAnd11[1]" value="5" aria-labelledby="label_11_col_4 label_11_row_1" aria-label="Cells Radio Button"><label for="input_11_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_2">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_11_row_2">Teacher shows initiative and flexibility in teaching</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_11_2_0" class="form-radio" name="q11_appearanceAnd11[2]" value="1" aria-labelledby="label_11_col_0 label_11_row_2" aria-label="Cells Radio Button"><label for="input_11_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_2_1" class="form-radio" name="q11_appearanceAnd11[2]" value="2" aria-labelledby="label_11_col_1 label_11_row_2" aria-label="Cells Radio Button"><label for="input_11_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_2_2" class="form-radio" name="q11_appearanceAnd11[2]" value="3" aria-labelledby="label_11_col_2 label_11_row_2" aria-label="Cells Radio Button"><label for="input_11_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_2_3" class="form-radio" name="q11_appearanceAnd11[2]" value="4" aria-labelledby="label_11_col_3 label_11_row_2" aria-label="Cells Radio Button"><label for="input_11_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_2_4" class="form-radio" name="q11_appearanceAnd11[2]" value="5" aria-labelledby="label_11_col_4 label_11_row_2" aria-label="Cells Radio Button"><label for="input_11_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_3">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_11_row_3">Teacher is well articulated and shows full knowledge of the subject in teaching</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_11_3_0" class="form-radio" name="q11_appearanceAnd11[3]" value="1" aria-labelledby="label_11_col_0 label_11_row_3" aria-label="Cells Radio Button"><label for="input_11_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_3_1" class="form-radio" name="q11_appearanceAnd11[3]" value="2" aria-labelledby="label_11_col_1 label_11_row_3" aria-label="Cells Radio Button"><label for="input_11_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_3_2" class="form-radio" name="q11_appearanceAnd11[3]" value="3" aria-labelledby="label_11_col_2 label_11_row_3" aria-label="Cells Radio Button"><label for="input_11_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_3_3" class="form-radio" name="q11_appearanceAnd11[3]" value="4" aria-labelledby="label_11_col_3 label_11_row_3" aria-label="Cells Radio Button"><label for="input_11_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_3_4" class="form-radio" name="q11_appearanceAnd11[3]" value="5" aria-labelledby="label_11_col_4 label_11_row_3" aria-label="Cells Radio Button"><label for="input_11_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_11 label_11_row_4">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_11_row_4">Teacher speaks loud and clear enough to be heard by the whole class </label></th>
              <td class="form-matrix-values"><input type="radio" id="input_11_4_0" class="form-radio" name="q11_appearanceAnd11[4]" value="1" aria-labelledby="label_11_col_0 label_11_row_4" aria-label="Cells Radio Button"><label for="input_11_4_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_4_1" class="form-radio" name="q11_appearanceAnd11[4]" value="2" aria-labelledby="label_11_col_1 label_11_row_4" aria-label="Cells Radio Button"><label for="input_11_4_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_4_2" class="form-radio" name="q11_appearanceAnd11[4]" value="3" aria-labelledby="label_11_col_2 label_11_row_4" aria-label="Cells Radio Button"><label for="input_11_4_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_4_3" class="form-radio" name="q11_appearanceAnd11[4]" value="4" aria-labelledby="label_11_col_3 label_11_row_4" aria-label="Cells Radio Button"><label for="input_11_4_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_11_4_4" class="form-radio" name="q11_appearanceAnd11[4]" value="5" aria-labelledby="label_11_col_4 label_11_row_4" aria-label="Cells Radio Button"><label for="input_11_4_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
          </tbody></table>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_matrix" id="id_12"><label class="form-label form-label-top" id="label_12" for="input_12"> Professional Practices <span class="form-required">*</span> </label>
        <div id="cid_12" class="form-input-wide jf-required">
          <table summary="" aria-labelledby="label_12" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
            <tbody><tr class="form-matrix-tr form-matrix-header-tr">
              <th class="form-matrix-th" style="border:none">&nbsp;</th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0"><label id="label_12_col_0">1</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1"><label id="label_12_col_1">2</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2"><label id="label_12_col_2">3</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3"><label id="label_12_col_3">4</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4"><label id="label_12_col_4">5</label></th>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_0">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_12_row_0">Teacher shows professionalism in class </label></th>
              <td class="form-matrix-values"><input type="radio" id="input_12_0_0" class="form-radio" name="q12_professionalPractices[0]" value="1" aria-labelledby="label_12_col_0 label_12_row_0" aria-label="Cells Radio Button"><label for="input_12_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_0_1" class="form-radio" name="q12_professionalPractices[0]" value="2" aria-labelledby="label_12_col_1 label_12_row_0" aria-label="Cells Radio Button"><label for="input_12_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_0_2" class="form-radio" name="q12_professionalPractices[0]" value="3" aria-labelledby="label_12_col_2 label_12_row_0" aria-label="Cells Radio Button"><label for="input_12_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_0_3" class="form-radio" name="q12_professionalPractices[0]" value="4" aria-labelledby="label_12_col_3 label_12_row_0" aria-label="Cells Radio Button"><label for="input_12_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_0_4" class="form-radio" name="q12_professionalPractices[0]" value="5" aria-labelledby="label_12_col_4 label_12_row_0" aria-label="Cells Radio Button"><label for="input_12_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_1">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_12_row_1">Teacher shows commitment to teaching the class</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_12_1_0" class="form-radio" name="q12_professionalPractices[1]" value="1" aria-labelledby="label_12_col_0 label_12_row_1" aria-label="Cells Radio Button"><label for="input_12_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_1_1" class="form-radio" name="q12_professionalPractices[1]" value="2" aria-labelledby="label_12_col_1 label_12_row_1" aria-label="Cells Radio Button"><label for="input_12_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_1_2" class="form-radio" name="q12_professionalPractices[1]" value="3" aria-labelledby="label_12_col_2 label_12_row_1" aria-label="Cells Radio Button"><label for="input_12_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_1_3" class="form-radio" name="q12_professionalPractices[1]" value="4" aria-labelledby="label_12_col_3 label_12_row_1" aria-label="Cells Radio Button"><label for="input_12_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_1_4" class="form-radio" name="q12_professionalPractices[1]" value="5" aria-labelledby="label_12_col_4 label_12_row_1" aria-label="Cells Radio Button"><label for="input_12_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_2">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_12_row_2">Teacher encourages students to engage in class discussions and ask questions</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_12_2_0" class="form-radio" name="q12_professionalPractices[2]" value="1" aria-labelledby="label_12_col_0 label_12_row_2" aria-label="Cells Radio Button"><label for="input_12_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_2_1" class="form-radio" name="q12_professionalPractices[2]" value="2" aria-labelledby="label_12_col_1 label_12_row_2" aria-label="Cells Radio Button"><label for="input_12_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_2_2" class="form-radio" name="q12_professionalPractices[2]" value="3" aria-labelledby="label_12_col_2 label_12_row_2" aria-label="Cells Radio Button"><label for="input_12_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_2_3" class="form-radio" name="q12_professionalPractices[2]" value="4" aria-labelledby="label_12_col_3 label_12_row_2" aria-label="Cells Radio Button"><label for="input_12_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_2_4" class="form-radio" name="q12_professionalPractices[2]" value="5" aria-labelledby="label_12_col_4 label_12_row_2" aria-label="Cells Radio Button"><label for="input_12_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_3">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_12_row_3">Teacher handles criticisms and suggestions professionally</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_12_3_0" class="form-radio" name="q12_professionalPractices[3]" value="1" aria-labelledby="label_12_col_0 label_12_row_3" aria-label="Cells Radio Button"><label for="input_12_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_3_1" class="form-radio" name="q12_professionalPractices[3]" value="2" aria-labelledby="label_12_col_1 label_12_row_3" aria-label="Cells Radio Button"><label for="input_12_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_3_2" class="form-radio" name="q12_professionalPractices[3]" value="3" aria-labelledby="label_12_col_2 label_12_row_3" aria-label="Cells Radio Button"><label for="input_12_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_3_3" class="form-radio" name="q12_professionalPractices[3]" value="4" aria-labelledby="label_12_col_3 label_12_row_3" aria-label="Cells Radio Button"><label for="input_12_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_3_4" class="form-radio" name="q12_professionalPractices[3]" value="5" aria-labelledby="label_12_col_4 label_12_row_3" aria-label="Cells Radio Button"><label for="input_12_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_4">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_12_row_4">Teacher comes to class on time</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_12_4_0" class="form-radio" name="q12_professionalPractices[4]" value="1" aria-labelledby="label_12_col_0 label_12_row_4" aria-label="Cells Radio Button"><label for="input_12_4_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_4_1" class="form-radio" name="q12_professionalPractices[4]" value="2" aria-labelledby="label_12_col_1 label_12_row_4" aria-label="Cells Radio Button"><label for="input_12_4_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_4_2" class="form-radio" name="q12_professionalPractices[4]" value="3" aria-labelledby="label_12_col_2 label_12_row_4" aria-label="Cells Radio Button"><label for="input_12_4_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_4_3" class="form-radio" name="q12_professionalPractices[4]" value="4" aria-labelledby="label_12_col_3 label_12_row_4" aria-label="Cells Radio Button"><label for="input_12_4_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_4_4" class="form-radio" name="q12_professionalPractices[4]" value="5" aria-labelledby="label_12_col_4 label_12_row_4" aria-label="Cells Radio Button"><label for="input_12_4_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_12 label_12_row_5">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_12_row_5">Teacher ends class on time</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_12_5_0" class="form-radio" name="q12_professionalPractices[5]" value="1" aria-labelledby="label_12_col_0 label_12_row_5" aria-label="Cells Radio Button"><label for="input_12_5_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_5_1" class="form-radio" name="q12_professionalPractices[5]" value="2" aria-labelledby="label_12_col_1 label_12_row_5" aria-label="Cells Radio Button"><label for="input_12_5_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_5_2" class="form-radio" name="q12_professionalPractices[5]" value="3" aria-labelledby="label_12_col_2 label_12_row_5" aria-label="Cells Radio Button"><label for="input_12_5_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_5_3" class="form-radio" name="q12_professionalPractices[5]" value="4" aria-labelledby="label_12_col_3 label_12_row_5" aria-label="Cells Radio Button"><label for="input_12_5_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_12_5_4" class="form-radio" name="q12_professionalPractices[5]" value="5" aria-labelledby="label_12_col_4 label_12_row_5" aria-label="Cells Radio Button"><label for="input_12_5_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
          </tbody></table>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_matrix" id="id_13"><label class="form-label form-label-top" id="label_13" for="input_13"> Teaching Methods<span class="form-required">*</span> </label>
        <div id="cid_13" class="form-input-wide jf-required">
          <table summary="" aria-labelledby="label_13" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
            <tbody><tr class="form-matrix-tr form-matrix-header-tr">
              <th class="form-matrix-th" style="border:none">&nbsp;</th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0"><label id="label_13_col_0">1</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1"><label id="label_13_col_1">2</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2"><label id="label_13_col_2">3</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3"><label id="label_13_col_3">4</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4"><label id="label_13_col_4">5</label></th>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_0">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_13_row_0">Teacher shows well rounded knowledge over the subject matter</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_13_0_0" class="form-radio" name="q13_teachingMethods[0]" value="1" aria-labelledby="label_13_col_0 label_13_row_0" aria-label="Cells Radio Button"><label for="input_13_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_0_1" class="form-radio" name="q13_teachingMethods[0]" value="2" aria-labelledby="label_13_col_1 label_13_row_0" aria-label="Cells Radio Button"><label for="input_13_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_0_2" class="form-radio" name="q13_teachingMethods[0]" value="3" aria-labelledby="label_13_col_2 label_13_row_0" aria-label="Cells Radio Button"><label for="input_13_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_0_3" class="form-radio" name="q13_teachingMethods[0]" value="4" aria-labelledby="label_13_col_3 label_13_row_0" aria-label="Cells Radio Button"><label for="input_13_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_0_4" class="form-radio" name="q13_teachingMethods[0]" value="5" aria-labelledby="label_13_col_4 label_13_row_0" aria-label="Cells Radio Button"><label for="input_13_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_1">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_13_row_1">Teacher has organized the lesson conducive for easy understanding of students</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_13_1_0" class="form-radio" name="q13_teachingMethods[1]" value="1" aria-labelledby="label_13_col_0 label_13_row_1" aria-label="Cells Radio Button"><label for="input_13_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_1_1" class="form-radio" name="q13_teachingMethods[1]" value="2" aria-labelledby="label_13_col_1 label_13_row_1" aria-label="Cells Radio Button"><label for="input_13_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_1_2" class="form-radio" name="q13_teachingMethods[1]" value="3" aria-labelledby="label_13_col_2 label_13_row_1" aria-label="Cells Radio Button"><label for="input_13_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_1_3" class="form-radio" name="q13_teachingMethods[1]" value="4" aria-labelledby="label_13_col_3 label_13_row_1" aria-label="Cells Radio Button"><label for="input_13_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_1_4" class="form-radio" name="q13_teachingMethods[1]" value="5" aria-labelledby="label_13_col_4 label_13_row_1" aria-label="Cells Radio Button"><label for="input_13_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_2">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_13_row_2">Teacher shows dynamism and enthusiasm</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_13_2_0" class="form-radio" name="q13_teachingMethods[2]" value="1" aria-labelledby="label_13_col_0 label_13_row_2" aria-label="Cells Radio Button"><label for="input_13_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_2_1" class="form-radio" name="q13_teachingMethods[2]" value="2" aria-labelledby="label_13_col_1 label_13_row_2" aria-label="Cells Radio Button"><label for="input_13_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_2_2" class="form-radio" name="q13_teachingMethods[2]" value="3" aria-labelledby="label_13_col_2 label_13_row_2" aria-label="Cells Radio Button"><label for="input_13_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_2_3" class="form-radio" name="q13_teachingMethods[2]" value="4" aria-labelledby="label_13_col_3 label_13_row_2" aria-label="Cells Radio Button"><label for="input_13_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_2_4" class="form-radio" name="q13_teachingMethods[2]" value="5" aria-labelledby="label_13_col_4 label_13_row_2" aria-label="Cells Radio Button"><label for="input_13_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_3">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_13_row_3">Teacher stimulates the critical thinking of students</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_13_3_0" class="form-radio" name="q13_teachingMethods[3]" value="1" aria-labelledby="label_13_col_0 label_13_row_3" aria-label="Cells Radio Button"><label for="input_13_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_3_1" class="form-radio" name="q13_teachingMethods[3]" value="2" aria-labelledby="label_13_col_1 label_13_row_3" aria-label="Cells Radio Button"><label for="input_13_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_3_2" class="form-radio" name="q13_teachingMethods[3]" value="3" aria-labelledby="label_13_col_2 label_13_row_3" aria-label="Cells Radio Button"><label for="input_13_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_3_3" class="form-radio" name="q13_teachingMethods[3]" value="4" aria-labelledby="label_13_col_3 label_13_row_3" aria-label="Cells Radio Button"><label for="input_13_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_3_4" class="form-radio" name="q13_teachingMethods[3]" value="5" aria-labelledby="label_13_col_4 label_13_row_3" aria-label="Cells Radio Button"><label for="input_13_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_13 label_13_row_4">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_13_row_4">Teacher handles the class environment conducive for learning</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_13_4_0" class="form-radio" name="q13_teachingMethods[4]" value="1" aria-labelledby="label_13_col_0 label_13_row_4" aria-label="Cells Radio Button"><label for="input_13_4_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_4_1" class="form-radio" name="q13_teachingMethods[4]" value="2" aria-labelledby="label_13_col_1 label_13_row_4" aria-label="Cells Radio Button"><label for="input_13_4_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_4_2" class="form-radio" name="q13_teachingMethods[4]" value="3" aria-labelledby="label_13_col_2 label_13_row_4" aria-label="Cells Radio Button"><label for="input_13_4_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_4_3" class="form-radio" name="q13_teachingMethods[4]" value="4" aria-labelledby="label_13_col_3 label_13_row_4" aria-label="Cells Radio Button"><label for="input_13_4_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_13_4_4" class="form-radio" name="q13_teachingMethods[4]" value="5" aria-labelledby="label_13_col_4 label_13_row_4" aria-label="Cells Radio Button"><label for="input_13_4_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
          </tbody></table>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_matrix" id="id_14"><label class="form-label form-label-top" id="label_14" for="input_14"> Disposition Towards Students<span class="form-required">*</span> </label>
        <div id="cid_14" class="form-input-wide jf-required">
          <table summary="" aria-labelledby="label_14" cellpadding="4" cellspacing="0" class="form-matrix-table" data-component="matrix">
            <tbody><tr class="form-matrix-tr form-matrix-header-tr">
              <th class="form-matrix-th" style="border:none">&nbsp;</th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_0"><label id="label_14_col_0">1</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_1"><label id="label_14_col_1">2</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_2"><label id="label_14_col_2">3</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_3"><label id="label_14_col_3">4</label></th>
              <th scope="col" class="form-matrix-headers form-matrix-column-headers form-matrix-column_4"><label id="label_14_col_4">5</label></th>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_0">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_14_row_0">Teacher believes that students can learn from the class</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_14_0_0" class="form-radio" name="q14_dispositionTowards[0]" value="1" aria-labelledby="label_14_col_0 label_14_row_0" aria-label="Cells Radio Button"><label for="input_14_0_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_0_1" class="form-radio" name="q14_dispositionTowards[0]" value="2" aria-labelledby="label_14_col_1 label_14_row_0" aria-label="Cells Radio Button"><label for="input_14_0_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_0_2" class="form-radio" name="q14_dispositionTowards[0]" value="3" aria-labelledby="label_14_col_2 label_14_row_0" aria-label="Cells Radio Button"><label for="input_14_0_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_0_3" class="form-radio" name="q14_dispositionTowards[0]" value="4" aria-labelledby="label_14_col_3 label_14_row_0" aria-label="Cells Radio Button"><label for="input_14_0_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_0_4" class="form-radio" name="q14_dispositionTowards[0]" value="5" aria-labelledby="label_14_col_4 label_14_row_0" aria-label="Cells Radio Button"><label for="input_14_0_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_1">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_14_row_1">Teacher shows equal respect to various cultural backgrounds, individuals, religion, and race</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_14_1_0" class="form-radio" name="q14_dispositionTowards[1]" value="1" aria-labelledby="label_14_col_0 label_14_row_1" aria-label="Cells Radio Button"><label for="input_14_1_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_1_1" class="form-radio" name="q14_dispositionTowards[1]" value="2" aria-labelledby="label_14_col_1 label_14_row_1" aria-label="Cells Radio Button"><label for="input_14_1_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_1_2" class="form-radio" name="q14_dispositionTowards[1]" value="3" aria-labelledby="label_14_col_2 label_14_row_1" aria-label="Cells Radio Button"><label for="input_14_1_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_1_3" class="form-radio" name="q14_dispositionTowards[1]" value="4" aria-labelledby="label_14_col_3 label_14_row_1" aria-label="Cells Radio Button"><label for="input_14_1_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_1_4" class="form-radio" name="q14_dispositionTowards[1]" value="5" aria-labelledby="label_14_col_4 label_14_row_1" aria-label="Cells Radio Button"><label for="input_14_1_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_2">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_14_row_2">Teacher finds the students strengths as basis for growth and weaknesses for opportunities for improvement</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_14_2_0" class="form-radio" name="q14_dispositionTowards[2]" value="1" aria-labelledby="label_14_col_0 label_14_row_2" aria-label="Cells Radio Button"><label for="input_14_2_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_2_1" class="form-radio" name="q14_dispositionTowards[2]" value="2" aria-labelledby="label_14_col_1 label_14_row_2" aria-label="Cells Radio Button"><label for="input_14_2_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_2_2" class="form-radio" name="q14_dispositionTowards[2]" value="3" aria-labelledby="label_14_col_2 label_14_row_2" aria-label="Cells Radio Button"><label for="input_14_2_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_2_3" class="form-radio" name="q14_dispositionTowards[2]" value="4" aria-labelledby="label_14_col_3 label_14_row_2" aria-label="Cells Radio Button"><label for="input_14_2_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_2_4" class="form-radio" name="q14_dispositionTowards[2]" value="5" aria-labelledby="label_14_col_4 label_14_row_2" aria-label="Cells Radio Button"><label for="input_14_2_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
            <tr class="form-matrix-tr form-matrix-value-tr" aria-labelledby="label_14 label_14_row_3">
              <th scope="row" class="form-matrix-headers form-matrix-row-headers"><label id="label_14_row_3">Teacher understands the weakness of a student and helps in the student's improvement</label></th>
              <td class="form-matrix-values"><input type="radio" id="input_14_3_0" class="form-radio" name="q14_dispositionTowards[3]" value="1" aria-labelledby="label_14_col_0 label_14_row_3" aria-label="Cells Radio Button"><label for="input_14_3_0" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_3_1" class="form-radio" name="q14_dispositionTowards[3]" value="2" aria-labelledby="label_14_col_1 label_14_row_3" aria-label="Cells Radio Button"><label for="input_14_3_1" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_3_2" class="form-radio" name="q14_dispositionTowards[3]" value="3" aria-labelledby="label_14_col_2 label_14_row_3" aria-label="Cells Radio Button"><label for="input_14_3_2" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_3_3" class="form-radio" name="q14_dispositionTowards[3]" value="4" aria-labelledby="label_14_col_3 label_14_row_3" aria-label="Cells Radio Button"><label for="input_14_3_3" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
              <td class="form-matrix-values"><input type="radio" id="input_14_3_4" class="form-radio" name="q14_dispositionTowards[3]" value="5" aria-labelledby="label_14_col_4 label_14_row_3" aria-label="Cells Radio Button"><label for="input_14_3_4" class="matrix-choice-label matrix-radio-label" aria-hidden="true"></label></td>
            </tr>
          </tbody></table>
        </div>
      </li>
      <li class="form-line" data-type="control_textarea" id="id_15"><label class="form-label form-label-top form-label-auto" id="label_15" for="input_15"> Comments </label>
        <div id="cid_15" class="form-input-wide"> <textarea id="input_15" class="form-textarea" name="q15_comments" cols="62" rows="6" data-component="textarea" aria-labelledby="label_15"></textarea> </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_2">
        <div id="cid_2" class="form-input-wide">
          <div data-align="center" class="form-buttons-wrapper form-buttons-center   jsTest-button-wrapperField"><button id="input_2" type="submit" class="form-submit-button form-submit-button-cool_grey submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Submit</button></div>
        </div>
      </li>
      <li style="display:none">Should be Empty: <input type="text" name="website" value=""></li>
    </ul>
        </div>
    </form>
</body>
</html>
