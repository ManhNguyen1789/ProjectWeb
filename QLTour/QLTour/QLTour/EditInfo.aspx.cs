using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLTour
{
    public partial class EditInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["TaiKhoan"] == null || Session["TaiKhoan"].ToString() == "")
                {
                    //Chưa đăng nhập
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    //Load dữ liệu
                    lbTaiKhoan.Text = Session["TaiKhoan"].ToString();
                    // Query về db để lấy các thông tin còn lại
                    TourDLEntities db = new TourDLEntities();
                    QLTour.KhachHang obj = db.KhachHang.FirstOrDefault(x => x.TaiKhoan == lbTaiKhoan.Text);
                    if (obj == null)
                    {
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        txtName.Text = obj.TenKH;
                        cbGioiTinh.SelectedValue = obj.GioiTinh;
                        txtQuocTich.Text = obj.QuocTich;
                        txtCMND.Text = obj.CMND;
                        txtDiaChi.Text = obj.DiaChi;
                        txtSoDT.Text = obj.SDT;
                        string makh = obj.MaKH;
                        getdata(makh);
                    }
                }
                //getData();
            }

            // kiểm tra trường hợp sửa/thêm mới
            // nếu url có dạng ?masp=123 => sửa, ngược lại là thêm mới
            //if (lbTaiKhoan.Text == null)
            //{
            //    // thêm mới
            //    btnUpdate.Visible = false;
            //    btnAdd.Visible = true;
            //    txtMaSP.Enabled = true;
            //}
        }
        void getdata(string makh)
        {
            try
            {
                TourDLEntities db = new TourDLEntities();
                if (db.Booking.FirstOrDefault(x => x.MaKH == makh) == null)
                {
                    lbError.Text = "bạn chưa có giao dịch";
                }
                else
                {
                    List<QLTour.Booking> lst = db.Booking.Where(x => x.MaKH == makh).ToList();
                    dgvLichSu.DataSource = lst;
                    dgvLichSu.DataBind();
                }
            }
            catch (Exception)
            {

            }
        }
        public string getTenTour(string MaTour)
        {
                TourDLEntities db = new TourDLEntities();
            return db.Tour.First(x => x.MaTour == MaTour).TenTour;
                //dgvLichSu.DataSource = ls;
                //dgvLichSu.DataBind();
        }

        public string getLichtrinhBD(string MaLT)
        {
            TourDLEntities db = new TourDLEntities();
            return db.LichTrinh.First(x => x.MaLT == MaLT).NgayBD.ToString();
        }
        public string getLichtrinhKT(string MaLT)
        {
            TourDLEntities db = new TourDLEntities();
            return db.LichTrinh.First(x => x.MaLT == MaLT).NgayKT.ToString();
        }
        public string getDiaDiem(string MaDDDL)
        {
            TourDLEntities db = new TourDLEntities();
            return db.DiaDiemDL.First(x => x.MaDDDL == MaDDDL).TenDDDL.ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                // Sửa dữ liệu
                TourDLEntities db = new TourDLEntities();
                QLTour.KhachHang obj = db.KhachHang.FirstOrDefault(x => x.TaiKhoan == lbTaiKhoan.Text);
                if (obj == null)
                {
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    obj.TenKH = txtName.Text;
                    obj.GioiTinh = cbGioiTinh.SelectedValue;
                    obj.QuocTich = txtQuocTich.Text;
                    obj.CMND = txtCMND.Text;
                    obj.DiaChi = txtDiaChi.Text;
                    obj.SDT = txtSoDT.Text;

                    db.SaveChanges();
                    Response.Redirect("Home.aspx");
                }
            }
            catch
            {
                // Lỗi 
            }
        }

        protected void btnXoa_Command(object sender, CommandEventArgs e)
        {
            string mave = e.CommandArgument.ToString();
            int abc = Int32.Parse(mave);
            TourDLEntities db = new TourDLEntities();
            QLTour.Booking obj = db.Booking.FirstOrDefault(x => x.MaVe == abc);

            if (obj.TrangThai == 1)
            {
                Response.Redirect("Home.aspx");
                //Response.Write("<script>alert('Bạn không thể xóa khi admin đã xác nhận tour thành công!');</script>");
            }
            else if (obj != null)
            {
                db.Booking.Remove(obj);
                db.SaveChanges();
                Response.Redirect("EditInfo.aspx");
            }
            
        }
    }
}