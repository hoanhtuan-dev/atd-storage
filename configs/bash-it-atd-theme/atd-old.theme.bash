# shellcheck shell=bash

if _command_exists oh-my-posh; then
	# export POSH_THEME=${POSH_THEME:-https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v$(oh-my-posh --version)/themes/jandedobbeleer.omp.json}
	eval "$(oh-my-posh --init --shell bash --config '~/.bash_it/themes/atd/atd.omp.json')"
else
	_log_warning "Không tìm thấy tệp nhị phân oh-my-posh trên PATH của bạn. Quay trở lại PS1 hiện tại của bạn, vui lòng xem tài liệu để biết thêm thông tin."
fi
