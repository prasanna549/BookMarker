package in.ps.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import in.ps.Iserv.BookmarkService;
import in.ps.entity.Bookmark;
@Controller
public class BookmarkController {
	private final BookmarkService service;

    public BookmarkController(BookmarkService service) {
        this.service = service;
    }

    @GetMapping("/")
    public String viewHome(Model model) {
        model.addAttribute("bookmarks", service.getAllBookmarks());
        return "index";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("bookmark", new Bookmark());
        return "add";
    }

    @PostMapping("/save")
    public String saveBookmark(@ModelAttribute Bookmark bookmark) {
        service.saveBookmark(bookmark);
        return "redirect:/";
    }

    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable Long id, Model model) {
        model.addAttribute("bookmark", service.getBookmarkById(id));
        return "edit";
    }

    @PostMapping("/update")
    public String updateBookmark(@ModelAttribute Bookmark bookmark) {
        service.saveBookmark(bookmark);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteBookmark(@PathVariable Long id) {
        service.deleteBookmark(id);
        return "redirect:/";
    }

}
