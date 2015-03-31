<?php
	function buttonTambah($level, $type, $nama, $link_to){
		if ($level == 1 || $level == 4){
			echo '
			<a class="'.$type.' fancybox.iframe" href="'.$link_to.'">
				<button class="btn btn-danger">
					<i class="fa fa-plus"></i> '.$nama.'
				</button>
			</a>';
		}else{
			echo '
			<a class="btn btn-danger" href="javascript:;" onclick="alert(\'Maaf akses ini tidak bisa menambahkan data!\')"><i class="fa fa-plus"></i> '.$nama.'</a>';
		}
	}