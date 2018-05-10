#!/bin/bash

# Set required variables
EASY_KERNEL_WORKFLOW=${EASY_KERNEL_WORKFLOW:-"easy-kernel-workflow"}
src_script_path=${src_script_path:-"$HOME/.config/$EASY_KERNEL_WORKFLOW/src"}
vm_script=$src_script_path/vm
mk_script=$src_script_path/mk
BASHPATH=/bin/bash

# Export external variables required by easy-kernel-workflow
export EASY_KERNEL_WORKFLOW

function easy-kernel-workflow()
{
	case "$1" in
		# vm options
		mount)
			$BASHPATH $vm_script mount
			;;
		umount)
			$BASHPATH $vm_script umount
			;;
		boot)
			$BASHPATH $vm_script boot
			;;
		# mk options$
		export)
			$BASHPATH $mk_script export
			;;
		build|b)
			$BASHPATH $mk_script build
			;;
		install|i)
			$BASHPATH $mk_script install
			;;
		bi)
			$BASHPATH $mk_script bi
			;;
		mail)
			$BASHPATH $mk_script mail
			;;
		help)
			# TODO: Unify help
			echo "--- mk ---"
			$BASHPATH $mk_script help
			echo "--- vm ---"
			$BASHPATH $vm_script help
			;;
		*)
			$BASHPATH $mk_script help
			$BASHPATH $vm_script help
			exit 1
	esac
}
