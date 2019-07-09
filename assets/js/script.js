document.querySelectorAll('.edit').forEach(function(edit_btn){
	edit_btn.addEventListener('click', function(){
		let id = this.dataset.id;
		$(`#edit_${id}_modal`).modal('show');
	})
})

document.querySelectorAll('.delete').forEach(function(del_btn){
	del_btn.addEventListener('click', function(){
		let id = this.dataset.id;
		$(`#del_${id}_modal`).modal('show');
	})
})

document.querySelectorAll('.add_points').forEach(function(add_pts){
	add_pts.addEventListener('click', function(){
		let id = this.dataset.id;
		console.log(id);
		$(`#add_points_${id}_modal`).modal('show');
	})
})

document.querySelectorAll('.deduct_points').forEach(function(dd_pts){
	dd_pts.addEventListener('click', function(){
		let id = this.dataset.id;
		$(`#dd_points_${id}_modal`).modal('show');
	})
})

$('.view_history').click(function(){
	console.log('success');
})

$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();   
});