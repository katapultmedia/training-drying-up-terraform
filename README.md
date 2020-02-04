![KM](https://katapultmedia.com/wp-content/uploads/2018/04/km_color_h.jpg)

# DRY Terraform Tutorial

[Terraform](https://terraform.io) (TF) is a great way to provision infrastructure. In fact, it is to us becoming the de facto standard. There are ways to DRY (don't repeat yourself) your code to make it considerably easier for reuse and reduce the blast radius for changes.

This code continues where [Terraforming TF Cloud](https://github.com/katapultmedia/training-terraforming-tf-cloud) leaves off.

## Video Walkthrough

[![video](https://katapultmedia.com/wp-content/uploads/2020/02/DRYing-up-Terraform-with-Modules-and-Locals-scaled.jpg)](https://www.youtube.com/watch?v=-MVplkiUoFQ&feature=youtu.be)

## Terraform Modules

[TF modules](https://learn.hashicorp.com/terraform/getting-started/modules) can be thought of as reusable classes, if you're a programmer. They enable not only a way to reuse code, but a way to help architect more thoughtful solutions to speed up deployments, disaster recovery, and more.

## Usage

This project is not intended to be used as a module for remote use. Take the files, customize them, and use them to your hearts content. Create an issue if you have questions.

The [Makefile](Makefile) has general commands to use for ease of development. There aren't special by any means. Feel free to `cd` to directories and run the `terraform` CLI commands you know and love directly.

### `make` commands

```make
Available targets:
config-apply                   TF Apply the cloud-config directory
config-plan                    TF Plan the cloud-config directory
fmt                            Formats the TF
init                           Install required tools for local environment
plan                           TF Plan the terraform directory
```

## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This tutorial is maintained and funded by [Katapult Media, Inc](https://katapultmedia.com). Send us a message!

![KM](https://katapultmedia.com/wp-content/uploads/2018/04/km_color_h.jpg)
