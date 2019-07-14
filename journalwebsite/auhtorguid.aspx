<%@ Page Title="" Language="C#" MasterPageFile="~/controlpanel.Master" AutoEventWireup="true" CodeBehind="auhtorguid.aspx.cs" Inherits="journalwebsite.author.auhtorguid" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
     <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
				
                <h3>Author</h3>
                
                <ul class="nav side-menu">
					
				  				
                   <li><a><i class="fa fa-edit"></i> Manuscript <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       
                       <li><a href="auhtorguid.aspx">Instructions for authors </a></li>      
                       <li><a href="submit_new_manuscript.aspx">Submit new Manuscript</a></li>  
                       <li><a href="UncompletedMenuScript.aspx">Incomplete Manuscripts</a></li>  
                       <li><a href="SubmittedArticals.aspx">Submitted Manuscripts</a></li>		
                           </ul>
                  </li>				  

                   
                </ul>
              </div>              
            </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Instructions for Authors</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <h3>Author Guidelines</h3>

<p>The articles should clearly describe new and carefully confirmed results and experimental procedure which should be given in required details for others to verify the work.</p>

<p>The manuscript should be prepared in English using "MS Word". Manuscript should be typed on A4 paper using 12point font size in double line spacing with a margin of 2.5cm on each side of the paper. The manuscript should not exceed 15 pages. All research articles should have the following sections: Title page, Abstract, Key words, Introduction, Materials and Methods, Results, Discussion, Conclusion, Acknowledgement (if any) and References.</p>

<p><strong>Title:</strong> The title should be followed by the author name and the institution name and address by indicating suitable superscripts. Title page should contain title of the paper in bold face, title case, names of the authors in normal face, upper case (font size 12) followed by the address(es) in normal face lower case. An asterisk (*) must be placed after the corresponding authors name as superscript whose email id, telephone number can be given. Corresponding author has the responsibility to ensure that all co-authors are aware and approve the contents of the submitted manuscript.</p>

<p><strong>Abstract:</strong> This section should detail the problems, experimental approach, major findings and conclusion in one paragraph. Avoid abbreviation, diagram and references in the abstract. Abstract should not exceed 150 words and must be written in italics style</p>

<p> </p>

<p><strong>Keywords:</strong> Author(s) must give key words which can identify the most important subjects covered by the paper. They must be placed at the end of the abstract.</p>

<p> </p>

<p><strong>Introduction:</strong> The manuscript should include the purpose of the investigation and relating the manuscript to similar previous research. Only information essential to the arguments should be presented.</p>

<p> </p>

<p><strong>Materials and Methods:</strong> This section must contain specific details about the materials studied, instruments used, specialized chemicals source and related experimental details which allows other research worker to reproduce the results. Obtain permission for all fully borrowed, adapted, and modified tables and provide a credit line in the footnote.</p>

<p><strong> Results and Discussion</strong>: The results should be concisely presented. Results and discussion may be separate or combined based on the author�s requirement. Tables and figures should be designed to maximize the comprehension of the experimental data. The interpreted results should be explained clearly in discussion and should relate them to the existing knowledge in the field as clearly as possible. Tables, Graphs and figures (Illustrations) should be inserted in to the main text at respective place they should appear when published and should have appropriate numbers and titles with an explanatory heading. Labels of the table, graph and figures MUST be in the text form and should not form part of the image. Colour photographs and illustrations (line drawings, halftones, photos, photomicrographs etc) must be clean original or digital files would be charged that may be intimated along with the acceptance letter. Those photographs must be clear and sharp. Digital files are recommended for highest quality reproduction.</p>

<p><strong>Acknowledgement (if any):</strong> This section can be kept at the end of the manuscript before reference section. This section can be used to acknowledge the help of those who do not qualify for authorship or to acknowledge funding, donated resources or significant contribution to the research.</p>

<p><strong>References:</strong> References to the literature cited for the manuscript should strictly follow APA 6th edition referencing style. The reference number should follow the following format.</p>

<p><strong>NOTE:</strong> The journal title and the volume number are in italics. Issue numbers are not required if the journal is continuously paged. If paged individually, the issue number is required and is in regular type in parentheses adjacent to the volume number.</p>

<p><strong>For Journals Format:</strong> Author(s) of article (surname initials). Title of the manuscript. Journal title abbreviated Year of publication; volume number (issue number): page numbers.</p>

<p><strong>For one author:</strong></p>

<p>Ahmed, G. (2016). Proximate Analysis of Ground Water in Hadejia Emirate, Jigawa State. <strong><em>Journal of Pure and Applied Sciences 2(1), 6-14.</em></strong></p>

<p><strong>For two authors:</strong></p>

<p>Abubakar, S and Umar, S. (2017). Prevalence of malaria Parasite among Pregnant Woman Attending Hadejia General Hospital. <strong><em>Journal of Pure and Applied Sciences 1(1), 7-14.</em></strong></p>

<p><strong>Two to Seven Authors [List all authors]</strong></p>

<p>Keller, T. E., Cusick, G. R., & Courtney, M. E. (2007).Approaching the transition to adulthood: Distinctive profiles of adolescents aging out of the child welfare system.Social Services Review, 81, 453- 484.</p>

<p><strong>Magazine Article </strong></p>

<p>Mathews, J., Berrett, D., & Brillman, D. (2005, May 16). Other winning equations. Newsweek, 145(20), 58-59.</p>

<p><strong>Newspaper Article with No Author and Discontinuous Pages </strong></p>

<p>Generic Prozac debuts. (2001, August 3). The Washington Post, pp. E1, E4.</p>

<p><strong>For Books and other monograph Format:</strong></p>

<p><strong>General Form Author</strong></p>

<p> A. A. (Year). Title of work. Location: Publisher.</p>

<p><strong>One Author</strong></p>

<p>Alexie, S. (1992). The business of fancy dancing: Stories and poems. Brooklyn, NY: Hang Loose Press.</p>

<p><strong>Corporate Author with an Edition and Published by the Corporate Author </strong></p>

<p>American Psychiatric Association. (1994). Diagnostic and statistical manual of mental disorders (4th ed.). Washington, DC: Author.</p>

<p><strong>Anonymous Author </strong></p>

<p>Dorland�s illustrated medical dictionary (31 sted.). (2007). Philadelphia, PA: Saunders.</p>

<p><strong>For Patent Reference:</strong> H. Aviv, D. Friedman, A. Bar-Ilan and M. Vered. Submicron emulsions as ocular drug delivery vehicles, U.S. Patent US 5496811; 1996.</p>

<p><br />
<strong>For Website Reference:</strong> </p>

<p> </p>

<p><strong>General Form Author </strong></p>

<p>A. A. (Year). Title of work. Retrieved from web address</p>

<p> </p>

<p><!--![endif]----></p>
                  </div>
                </div>
              </div>
            </div>
       
</asp:Content>
