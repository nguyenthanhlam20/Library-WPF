using Services;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using DataAccess.Models;
using static WPFApp.Constants.AppConstants;
using WPFApp.UI.User.ViewModels.Pages;

namespace WPFApp.UI.User.ViewModels.Windows
{
    public class BookDetailsViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;

        private readonly IBookService _service;
        private BookViewModel _viewModel;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        public string _pageTitle = null!;

        public string PageTitle
        {
            get { return _pageTitle; }
            set
            {
                _pageTitle = value;
                OnPropertyChanged("PageTitle");
            }
        }

        public string _title = null!;

        public string Title
        {
            get { return _title; }
            set
            {
                _title = value;
                OnPropertyChanged("Title");
            }
        }

        public string _description = null!;

        public string Description
        {
            get { return _description; }
            set
            {
                _description = value;
                OnPropertyChanged("Description");
            }
        }

        public string _author = null!;

        public string Author
        {
            get { return _author; }
            set
            {
                _author = value;
                OnPropertyChanged("Author");
            }
        }

        public ReplayCommand? CloseWindowCommand { get; set; }

        public ReplayCommand? SaveCommand { get; set; }

        public ActionType? actionType { get; set; }

        public int Id { get; set; }

        public BookDetailsViewModel(ActionType aType, int id, BookViewModel viewModel)
        {
            _viewModel = viewModel;
            _service = new BookService();

            actionType = aType;
            Id = id;

            CloseWindowCommand = new ReplayCommand(CloseWindow);
            SaveCommand = new ReplayCommand(Save);
            if (aType == ActionType.Insert)
                PageTitle = "create new book".ToUpper();

            if (aType == ActionType.Edit)
            {
                PageTitle = "edit book".ToUpper();
                GetDetails();
            }

            if (aType == ActionType.View)
            {
                PageTitle = "view book".ToUpper();
                GetDetails();
            }
        }

        public async void Save(object parameter)
        {
            if (actionType == ActionType.Insert)
            {
                await _service.AddNew(new Book()
                {
                   Title = Title,
                   Description = Description,
                   Author = Author
                });
            }

            if (actionType == ActionType.Edit)
            {
                await _service.Update(new Book()
                {
                    Id = Id,
                    Title = Title,
                    Description = Description,
                    Author = Author
                });
            }
            var w = parameter as Window;
            await _viewModel.LoadItems();
            w?.Close();
        }


        public void CloseWindow(object parameter)
        {
            var w = parameter as Window;
            w?.Close();
        }

        public async void GetDetails()
        {
            var data = await _service.GetAll();
            var item = data.SingleOrDefault(x => x.Id == Id);
            if (item != null)
            {
                Title = item.Title;
                Description = item.Description;
                Author = item.Author;
            }
        }

    }
}
