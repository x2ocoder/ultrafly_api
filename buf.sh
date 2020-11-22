# The old way
# protoc -I=. --go_out=. ffruit/v1/ffruit.proto dacs/v1/dacs.proto rbell/v1/oneshelf.proto cfruit/v1/cfruit.proto dfruit/v1/dfruit.proto ufly/v1/ufly.proto tfruit/v1/tfruit.proto ukey/v1/ukey.proto


# How to use this? https://github.com/bufbuild/buf

# For parity with the above example, we're assuming we have our build.roots
# configured in a buf.yaml file in the current directory.
#
# We need to do "buf image build | buf ls-files --input -" instead of "buf ls-files"
# to make sure that the filenames are root-relative.
mkdir -p gen
mkdir -p gen_rb
mkdir -p rvue/src/buf
buf image build -o - | protoc --descriptor_set_in=/dev/stdin --go_out=paths=source_relative:. --js_out=import_style=commonjs,binary:rvue/src/buf --ruby_out=gen_rb $(buf image build -o - | buf ls-files --input -)
