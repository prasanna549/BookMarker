package in.ps.Iserv;

import java.util.List;

import in.ps.entity.Bookmark;

public interface BookmarkService {
	 Bookmark saveBookmark(Bookmark bookmark);
	    List<Bookmark> getAllBookmarks();
	    Bookmark getBookmarkById(Long id);
	    void deleteBookmark(Long id);

}
