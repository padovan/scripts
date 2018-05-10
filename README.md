# easy-kernel-workflow

# About

> A set of script to easily work with Linux Kernel.

Prerequisites:

* If you want to use Qemu, you have to create a Qemu image as a qcow2 and save
  it in "$HOME/p/virty.qcow2".
 
# Install

> To install the scripts:

```
./setup -i
bash --login
```

# How to

> Help commands:

```
easy-kernel-workflow help
```

> Build an Kernel and install in the Qemu image:

```
easy-kernel-workflow bi
```

> Mount qemu image to transfer data:

```
easy-kernel-workflow mount
```

> Umount qemu image:

```
easy-kernel-workflow umount
```

# Notes

* If you have a `.config` in your kernel build-tree, you have to move it to
  `~/p/linux-trees/build-linux/qemu/`;

