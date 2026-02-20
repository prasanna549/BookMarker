package in.ps.service;

import java.util.List;

import org.springframework.stereotype.Service;

import in.ps.Iserv.BookmarkService;
import in.ps.Repo.BookmarkRepository;
import in.ps.entity.Bookmark;
@Service
public class BookmarkServiceImpl implements BookmarkService{
	 private final BookmarkRepository repository;

	    public BookmarkServiceImpl(BookmarkRepository repository) {
	        this.repository = repository;
	    }

	    @Override
	    public Bookmark saveBookmark(Bookmark bookmark) {
	        return repository.save(bookmark);
	    }

	    @Override
	    public List<Bookmark> getAllBookmarks() {
	        return repository.findAll();
	    }

	    @Override
	    public Bookmark getBookmarkById(Long id) {
	        return repository.findById(id).orElse(null);
	    }

	    @Override
	    public void deleteBookmark(Long id) {
	        repository.deleteById(id);
	    }

}
