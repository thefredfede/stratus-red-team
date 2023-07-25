# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StratusRedTeam < Formula
  desc ""
  homepage "https://stratus-red-team.cloud"
  version "2.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.8.1/stratus-red-team_Darwin_x86_64.tar.gz"
      sha256 "d820c800a9b5c7f2193cd84228dd066c5042db59efc3eb8695ca4cec084f43de"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.8.1/stratus-red-team_Darwin_arm64.tar.gz"
      sha256 "ff07ebc2ad6e5f05dafbf405f9d3e2643607632756e9acf19ee271138478e5e4"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.8.1/stratus-red-team_Linux_x86_64.tar.gz"
      sha256 "f06a5f6808f156246fee28ef5ee463f562479caa701e0ef6b959a4382d707b6d"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/DataDog/stratus-red-team/releases/download/v2.8.1/stratus-red-team_Linux_arm64.tar.gz"
      sha256 "183955329795613f1cdb8a470f1da57dc5777f0859a91bd09c1c4bc856e60d87"

      def install
        bin.install "stratus"

        # Install shell completions
        generate_completions_from_executable(bin/"stratus", "completion", shells: [:bash, :fish, :zsh], base_name: "stratus")
      end
    end
  end
end
