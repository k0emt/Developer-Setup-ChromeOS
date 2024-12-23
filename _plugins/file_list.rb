module Jekyll
  class FileListGenerator < Generator
    safe true

    def generate(site)
      journal_dir = File.join(site.source, 'Journal')
      markdown_files = Dir.glob("#{journal_dir}/*.md")

      file_list = markdown_files.map do |file|
        filename = File.basename(file)
        relative_path = File.join('Journal', filename)
        "[#{filename}](#{relative_path})"
      end

      site.config['journal_files'] = file_list
    end
  end
end