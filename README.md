filefrog/ytdl Docker Image
==========================

This is my [youtube-dl][1] Docker image.  It rolls up all of the
dependencies that youtube-dl has (Python, ffmpeg, etc.) into a
nice, portable thing.

To run it:

    docker run --rm -it filefrog/ytdl [options]

In almost all circumstances, you will want to mount in an external
file system at `/media`, to save your downloaded video files:

    docker run --rm -it \
      -v $PWD/youtube:/media \
      filefrog/ytdl [options]

For example, to download the T-T-T-T-Target Vine to your home
directory:

    docker run --rm -it -v $HOME:/media \
      filefrog/ytdl https://www.youtube.com/watch?v=luLX6gCbPyw

This docker image is built such that any commands you pass it are
interpreted as arguments to the base `youtube-dl` command.  In
that sense, `docker run ... filefrog/ytdl` can be thought of as an
alias for the actual `youtube-dl` command, except you don't have
to install the software, or Python, or ffmpeg.

[1]: https://github.com/ytdl-org/youtube-dl
