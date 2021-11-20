 $(document).ready(
	function () {
	    var date=$("#datepicker").datepicker({
	        dateFormat: 'dd-mm-yy',
//	        changeMonth: true, //Tùy chọn này cho phép người dùng chọn tháng
//	        changeYear: true //Tùy chọn này cho phép người dùng lựa chọn từ phạm vi năm
	    }).val();
	}
);