$(function() {
    $("#form-register").validate({
        rules: {
            name: {
                required: true, // bắt buộc phải điền vào
                minlength: 3 // tối đa 3 ký tự
            },
            password: {
                required: true,
                minlength: 6
            },
            password_confirmation: {
                equalTo: "#password" // so sánh có giống với passwor ko?
            },
            email: {
                required: true,
                email: true // kiểm tra lỗi có phải email không
            }
        },
        messages: {
            name: {
                required: "Tên không được để trống",
                minlength: "Tên chứa ít nhất 3 ký tự"
            },
            password: {
                required: "Mật khẩu không được để trống",
                minlength: "Mật khẩu phải có ít nhất 6 ký tự"
            },
            password_confirmation: {
                equalTo: "Nhập mật khẩu không giống"
            },
            email: {
                required: "Email không được để trống",
                email: "Email không đúng định dạng"
            }
        }
    });
});
