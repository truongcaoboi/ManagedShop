package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import model.*;
import DAO.*;
import model.Suplier;
import java.util.Vector;
import DAO.Data;
import model.TypeProduct;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/insertForm.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--phần header-->\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"logo\">\n");
      out.write("                PHÁI MẠNH SHOP\n");
      out.write("            </div>\n");
      out.write("            <div class=\"info\">\n");
      out.write("                <div class=\"image_admin\" style=\"background-image: url(images/admin.png)\"></div>\n");
      out.write("                <div class=\"name_admin\"><a href=\"#\">Đặng Xuân Trường</a></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!--end header-->\n");
      out.write("\n");
      out.write("        <!--start body-->\n");
      out.write("        <div class=\"cover\">\n");
      out.write("            <!--start menu-->\n");
      out.write("            <div class=\"slidebar\">\n");
      out.write("                <ul>\n");
      out.write("                    <li class=\"item_menu\">\n");
      out.write("                        <a href=\"tongquan.jsp\">\n");
      out.write("                            <div class=\"cover_menu\">\n");
      out.write("                                <div class=\"image_menu\" style=\"background-image: url(images/overview.png)\"></div>\n");
      out.write("                                <div class=\"content_menu\">\n");
      out.write("                                    <div>Tổng quan</div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"item_menu\">\n");
      out.write("                        <a href=\"index.jsp\">\n");
      out.write("                            <div class=\"cover_menu\">\n");
      out.write("                                <div class=\"image_menu\" style=\"background-image: url(images/product.png)\"></div>\n");
      out.write("                                <div class=\"content_menu\">\n");
      out.write("                                    <div>Danh mục sản phẩm</div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"item_menu\">\n");
      out.write("                        <a href=\"suplier.jsp\">\n");
      out.write("                            <div class=\"cover_menu\">\n");
      out.write("                                <div class=\"image_menu\" style=\"background-image: url(images/suplier.png)\"></div>\n");
      out.write("                                <div class=\"content_menu\">\n");
      out.write("                                    <div>Danh mục nhà cung cấp</div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"item_menu\">\n");
      out.write("                        <a href=\"report.jsp\">\n");
      out.write("                            <div class=\"cover_menu\">\n");
      out.write("                                <div class=\"image_menu\" style=\"background-image: url(images/report.png)\"></div>\n");
      out.write("                                <div class=\"content_menu\">\n");
      out.write("                                    <div>Báo cáo</div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </li>\n");
      out.write("                </ul>\n");
      out.write("            </div>\n");
      out.write("            <!--end menu-->\n");
      out.write("            <!--start content-->\n");
      out.write("            <div class=\"content\">\n");
      out.write("                <div class=\"titile\">Danh mục sản phẩm</div>\n");
      out.write("                <!--start toolbar-->\n");
      out.write("                <div class=\"toolbar\">\n");
      out.write("                    <ul>\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <li class=\"item_tool\" onclick=\"insert()\">\n");
      out.write("                                <div class=\"cover_tool\">\n");
      out.write("                                    <div class=\"image_tool\" style=\"background-image: url(images/add.png)\"></div>\n");
      out.write("                                    <div class=\"content_tool\">\n");
      out.write("                                        <div>Thêm sản phẩm</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <li class=\"item_tool\" onclick=\"detail()\">\n");
      out.write("                                <div class=\"cover_tool\">\n");
      out.write("                                    <div class=\"image_tool\" style=\"background-image: url(images/detail.png)\"></div>\n");
      out.write("                                    <div class=\"content_tool\">\n");
      out.write("                                        <div>Xem chi tiết</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <li class=\"item_tool\" onclick=\"update()\">\n");
      out.write("                                <div class=\"cover_tool\">\n");
      out.write("                                    <div class=\"image_tool\" style=\"background-image: url(images/update.png)\"></div>\n");
      out.write("                                    <div class=\"content_tool\">\n");
      out.write("                                        <div>Cập nhật sản phẩm</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </a>\n");
      out.write("                        <a href=\"#\">\n");
      out.write("                            <li class=\"item_tool\">\n");
      out.write("                                <div class=\"cover_tool\">\n");
      out.write("                                    <div class=\"image_tool\" style=\"background-image: url(images/add1.png)\"></div>\n");
      out.write("                                    <div class=\"content_tool\">\n");
      out.write("                                        <div>Thêm loại sản phẩm</div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </a>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!--end toolbar-->\n");
      out.write("                <!--start data-->\n");
      out.write("                <div class=\"data\">\n");
      out.write("                    <table cellspacing='0' cellpadding='5' width='1700px'>\n");
      out.write("                        <!--tiêu đề-->\n");
      out.write("                        <tbody class=\"title_column\">\n");
      out.write("                            <tr>\n");
      out.write("                                <th width='150px'>Mã sản phẩm</th>\n");
      out.write("                                <th width='250px'>Tên sản phẩm</th>\n");
      out.write("                                <th width='150px'>Giá</th>\n");
      out.write("                                <th width='150px'>Kích cỡ</th>\n");
      out.write("                                <th width='150px'>Màu sắc</th>\n");
      out.write("                                <th width='250px'>Mô tả</th>\n");
      out.write("                                <th width='150px'>Số lượng tồn kho</th>\n");
      out.write("                                <th width='250px'>Nhà cung cấp</th>\n");
      out.write("                                <th width='200px'>Loại sản phẩm</th>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td><input type=\"text\" class=\"require require150\" onkeyup=\"filter()\" id='txtMaSP'></td>\n");
      out.write("                                <td><input type=\"text\" class=\"require require250\" onkeyup=\"filter()\" id=\"txtTenSP\"></td>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td>\n");
      out.write("                                    <select class=\"require require150\" onchange=\"filter()\" id='kichCo'>\n");
      out.write("                                        <option value=\"\">Tất cả</option>\n");
      out.write("                                        <option value='5XL'>5XL</option>\n");
      out.write("                                        <option value=\"4XL\">4XL</option>\n");
      out.write("                                        <option value=\"3XL\">3XL</option>\n");
      out.write("                                        <option value=\"2XL\">2XL</option>\n");
      out.write("                                        <option value=\"XL\">XL</option>\n");
      out.write("                                        <option value=\"L\">L</option>\n");
      out.write("                                        <option value=\"M\">M</option>\n");
      out.write("                                        <option value=\"S\">S</option>\n");
      out.write("                                    </select>\n");
      out.write("                                    \n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("<!--                                    <select class=\"require require150\" onchange=\"filter()\" id=\"maMau\">\n");
      out.write("                                        <option value=\"\">Tất cả</option>\n");
      out.write("                                        ");

                                            Vector<String> maus = new Data().getMaus();
                                            for (String s : maus) {
                                        
      out.write("\n");
      out.write("                                        <option value='");
      out.print(s);
      out.write("' style=\"height: 30px;\">");
      out.print(s);
      out.write("</option>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </select>-->\n");
      out.write("                                    <select class=\"require require150\" onchange=\"filter()\" id=\"maMau\">\n");
      out.write("                                        <option value=\"\">Tất cả</option>\n");
      out.write("                                        <option value=\"#0000FF\">Xanh lam</option>\n");
      out.write("                                        <option value=\"#c8a2c8\">Hoa cà</option>\n");
      out.write("                                        <option value=\"#E6E6FA\">Oải hương</option>\n");
      out.write("                                        <option value=\"#50C878\">Lục bảo</option>\n");
      out.write("                                        <option value=\"#C41E3A\">Hồng y</option>\n");
      out.write("                                        <option value=\"#7FFF00\">Xanh noãn chuối</option>\n");
      out.write("                                        <option value=\"#40826D\">Xanh crom</option>\n");
      out.write("                                        <option value=\"#FF3E96\">Tím nhạt</option>\n");
      out.write("                                        <option value=\"#FFC125\">Vàng nhạt</option>\n");
      out.write("                                        <option value=\"#228B22\">Xanh rêu</option>\n");
      out.write("                                        <option value=\"#8B4513\">Màu nâu</option>\n");
      out.write("                                        <option value=\"#FF8C00\">Màu bò</option>\n");
      out.write("                                        <option value=\"#C0C0C0\">Màu bạc</option>\n");
      out.write("                                        <option value=\"#00F5FF\">Xanh cổ vịt</option>\n");
      out.write("                                        <option value=\"#00FF00\">Xanh lá cây</option>\n");
      out.write("                                        <option value=\"#000022\">Xanh đen</option>\n");
      out.write("                                        <option value=\"#FF1493\">Màu hồng</option>\n");
      out.write("                                        <option value=\"#FFFAF0\">Màu kem</option>\n");
      out.write("                                        <option value=\"#FF4500\">Màu cam</option>\n");
      out.write("                                        <option value=\"#363636\">Xám đậm</option>\n");
      out.write("                                        <option value=\"#CFCFCF\">Xám nhạt</option>\n");
      out.write("                                        <option value=\"#8B658B\">Màu tím</option>\n");
      out.write("                                        <option value=\"#FFFF00\">Màu vàng</option>\n");
      out.write("                                        <option value=\"#E90FF\">Xanh da trời</option>\n");
      out.write("                                        <option value=\"#0000FF\">Màu xanh 1</option>\n");
      out.write("                                        <option value=\"#00C5CD\">Màu xanh 2</option>\n");
      out.write("                                        <option value=\"#770000\">Đỏ đô</option>\n");
      out.write("                                        <option value=\"#F00000\">Màu đỏ</option>\n");
      out.write("                                        <option value=\"#FFFFFF\">Màu trắng</option>\n");
      out.write("                                        <option value=\"#000000\">Màu đen</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td>\n");
      out.write("                                    <select class=\"require require250\" onchange=\"filter()\" id=\"maNCC\">\n");
      out.write("                                        <option value=\"0\">Tất cả</option>\n");
      out.write("                                        ");

                                            Vector<Suplier> supliers = new Data().getSupliers();
                                            for (Suplier s : supliers) {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(s.getMa());
      out.write("\" style=\"height: 30px;\">");
      out.print(s.getTen());
      out.write("</option>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <select class=\"require require200\" onchange=\"filter()\" id='maLoai'>\n");
      out.write("                                        <option value=\"0\">Tất cả</option>\n");
      out.write("                                        ");

                                            Vector<TypeProduct> typess = new Data().getTypes();
                                            for (TypeProduct t : typess) {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(t.getMa());
      out.write("\" style=\"height: 30px;\">");
      out.print(t.getName());
      out.write("</option>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                        <!--nội dung-->\n");
      out.write("                        <tbody class=\"table_data\" id=\"table-data\">\n");
      out.write("                        <input type=\"hidden\" value=\"\" id=\"masp\">\n");
      out.write("                        ");

                            Vector<Product> products = new Data().getProducts(0, "", "", "", 0, 0);
                            if (products.size() == 0) {
                                out.print("no results");
                            } else {
                                //out.print(new Data().getProducts1(0, "M", "", "", 0, 0));
                                for (Product p : products) {
                        
      out.write("\n");
      out.write("                        <tr onclick=\"choose(");
      out.print(p.getMaSP());
      out.write(", this)\" class=\"row_data\">\n");
      out.write("                            <td widtd='150px'>");
      out.print( p.getMaSP());
      out.write("</td>\n");
      out.write("                            <td widtd='250px'>");
      out.print( p.getTenSP());
      out.write("</td>\n");
      out.write("                            <td widtd='150px'>");
      out.print(p.getGia());
      out.write("</td>\n");
      out.write("                            <td widtd='150px'>");
      out.print(p.getKichCo());
      out.write("</td>\n");
      out.write("                            <td widtd='150px' align=\"center\"><div style=\"height: 20px; width: 100px; background-color: #");
      out.print(p.getMau());
      out.write("\"></div></td>\n");
      out.write("                            <td widtd='250px'>");
      out.print(p.getMoTa());
      out.write("</td>\n");
      out.write("                            <td widtd='150px'>");
      out.print((int) p.getSoLuong());
      out.write("</td>\n");
      out.write("                            <td widtd='250px'>");
      out.print(p.getTenncc());
      out.write("</td>\n");
      out.write("                            <td widtd='200px'>");
      out.print(p.getTenloaisp());
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                                }
                            }
                        
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("                <!--end data-->\n");
      out.write("                <div class=\"phan_trang\">\n");
      out.write("                    <a href=\"#\"><div class=\"button\">Prev</div></a>\n");
      out.write("                    <input type=\"text\" value=\"1\" disabled=\"true\" class=\"button\">\n");
      out.write("                    <a href=\"#\"><div class=\"button\">Next</div></a>\n");
      out.write("                    <div class=\"song\">\n");
      out.write("                        <div>Số dòng trên một trang</div> \n");
      out.write("                        <select class=\"button\">\n");
      out.write("                            <option value=\"10\" selected=\"true\">10</option>\n");
      out.write("                            <option value=\"20\">20</option>\n");
      out.write("                            <option value=\"30\">30</option>\n");
      out.write("                        </select>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <!--end content-->\n");
      out.write("        </div>\n");
      out.write("        <!--end body-->\n");
      out.write("        <!--form update-->\n");
      out.write("        <div id=\"update_form\" style=\"display:none\">\n");
      out.write("            ");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"insert_form\" style=\"display: none;\">\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"cover_form\">\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <div class=\"title_form\">\n");
      out.write("                <div class=\"title_form_text\">Insert Product</div>\n");
      out.write("                <div class=\"exit_button\" id=\"exit_update_form\" onclick=\"closeInsert()\"></div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"content_form\">\n");
      out.write("                <form>\n");
      out.write("                    <table cellspacing=\"10\">\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Tên sản phẩm</th>\n");
      out.write("                                <td><input type=\"text\" name=\"ten\" required=\"\"></td>\n");
      out.write("                                <th>Giá</th>\n");
      out.write("                                <td><input type=\"number\" name=\"gia\" required=\"\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Kích thước</th>\n");
      out.write("                                <td>\n");
      out.write("                                    <select name=\"kichthuoc\">\n");
      out.write("                                        <option value='5XL'>5XL</option>\n");
      out.write("                                        <option value=\"4XL\">4XL</option>\n");
      out.write("                                        <option value=\"3XL\">3XL</option>\n");
      out.write("                                        <option value=\"2XL\">2XL</option>\n");
      out.write("                                        <option value=\"XL\">XL</option>\n");
      out.write("                                        <option value=\"L\">L</option>\n");
      out.write("                                        <option value=\"M\">M</option>\n");
      out.write("                                        <option value=\"S\">S</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                                <th>Số lượng tồn</th>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"number\" value=\"\" name=\"amount\" required=\"\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Chọn màu</th>\n");
      out.write("                                <td>\n");
      out.write("                                    <select onchange=\"chageColor()\" id=\"updateColor\" name=\"mau\">\n");
      out.write("                                        <option value=\"#0000FF\">Xanh lam</option>\n");
      out.write("                                        <option value=\"#c8a2c8\">Hoa cà</option>\n");
      out.write("                                        <option value=\"#E6E6FA\">Oải hương</option>\n");
      out.write("                                        <option value=\"#50C878\">Lục bảo</option>\n");
      out.write("                                        <option value=\"#C41E3A\">Hồng y</option>\n");
      out.write("                                        <option value=\"#7FFF00\">Xanh noãn chuối</option>\n");
      out.write("                                        <option value=\"#40826D\">Xanh crom</option>\n");
      out.write("                                        <option value=\"#FF3E96\">Tím nhạt</option>\n");
      out.write("                                        <option value=\"#FFC125\">Vàng nhạt</option>\n");
      out.write("                                        <option value=\"#228B22\">Xanh rêu</option>\n");
      out.write("                                        <option value=\"#8B4513\">Màu nâu</option>\n");
      out.write("                                        <option value=\"#FF8C00\">Màu bò</option>\n");
      out.write("                                        <option value=\"#C0C0C0\">Màu bạc</option>\n");
      out.write("                                        <option value=\"#00F5FF\">Xanh cổ vịt</option>\n");
      out.write("                                        <option value=\"#00FF00\">Xanh lá cây</option>\n");
      out.write("                                        <option value=\"#000022\">Xanh đen</option>\n");
      out.write("                                        <option value=\"#FF1493\">Màu hồng</option>\n");
      out.write("                                        <option value=\"#FFFAF0\">Màu kem</option>\n");
      out.write("                                        <option value=\"#FF4500\">Màu cam</option>\n");
      out.write("                                        <option value=\"#363636\">Xám đậm</option>\n");
      out.write("                                        <option value=\"#CFCFCF\">Xám nhạt</option>\n");
      out.write("                                        <option value=\"#8B658B\">Màu tím</option>\n");
      out.write("                                        <option value=\"#FFFF00\">Màu vàng</option>\n");
      out.write("                                        <option value=\"#E90FF\">Xanh da trời</option>\n");
      out.write("                                        <option value=\"#0000FF\">Màu xanh 1</option>\n");
      out.write("                                        <option value=\"#00C5CD\">Màu xanh 2</option>\n");
      out.write("                                        <option value=\"#770000\">Đỏ đô</option>\n");
      out.write("                                        <option value=\"#F00000\">Màu đỏ</option>\n");
      out.write("                                        <option value=\"#FFFFFF\">Màu trắng</option>\n");
      out.write("                                        <option value=\"#000000\">Màu đen</option>\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                                <td>\n");
      out.write("                                    <div style=\"height: 25px;width: 100px; background-color:#0000FF;border:1px solid black; \" id=\"exampleColor\"></div>\n");
      out.write("                                </td>\n");
      out.write("                                <td></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th rowspan=\"3\" valign=\"top\">Mô tả</th>\n");
      out.write("                                <td rowspan=\"3\" colspan=\"3\">\n");
      out.write("                                    <textarea rows=\"3\" cols=\"40\" style=\"height: 100px;width: 620px\" required=\"\" name=\"mota\">\n");
      out.write("                                        \n");
      out.write("                                    </textarea>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr></tr>\n");
      out.write("                            <tr></tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Hình ảnh</th>\n");
      out.write("                                <td colspan=\"3\"><input type=\"file\" value=\"\" name=\"hinhanh\" style=\"height: 30px;width: 620px\" required=\"\"></td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>Nhà cung cấp</th>\n");
      out.write("                                <td>\n");
      out.write("                                    <select name=\"maNcc\">\n");
      out.write("<!--                                        <option value=\"0\">Tất cả</option>-->\n");
      out.write("                                        ");

                                            Vector<Suplier> supliers2 = new Data().getSupliers();
                                            for (Suplier s : supliers2) {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(s.getMa());
      out.write("\" style=\"height: 30px;\">");
      out.print(s.getTen());
      out.write("</option>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                                <th>\n");
      out.write("                                    Loại sản phẩm\n");
      out.write("                                </th>\n");
      out.write("                                <td>\n");
      out.write("                                    <select name=\"maLoai\">\n");
      out.write("<!--                                        <option value=\"0\">Tất cả</option>-->\n");
      out.write("                                        ");

                                            Vector<TypeProduct> typess2 = new Data().getTypes();
                                            for (TypeProduct t : typess2) {
                                        
      out.write("\n");
      out.write("                                        <option value=\"");
      out.print(t.getMa());
      out.write("\" style=\"height: 30px;\">");
      out.print(t.getName());
      out.write("</option>\n");
      out.write("                                        ");

                                            }
                                        
      out.write("\n");
      out.write("                                    </select>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td colspan=\"2\" align=\"right\">\n");
      out.write("                                    <input type=\"submit\" value=\"Hoàn tất\">\n");
      out.write("                                </td>\n");
      out.write("                                <td colspan=\"2\" align=\"left\">\n");
      out.write("                                    <input type=\"reset\" value=\"Hủy bỏ\">\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"detail_form\" style=\"display: none;\">\n");
      out.write("            ");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"js/indexJS.js\" type=\"text/javascript\"></script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
