using DataAccess.Models;
using Services;
using System;
using System.ComponentModel;
using System.Linq;
using System.Windows;
using WPFApp.Contexts;
using WPFApp.UI.User.ViewModels.Pages;
using static WPFApp.Constants.AppConstants;

namespace WPFApp.UI.User.ViewModels.Windows
{
    public class HistoryDetailsViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler? PropertyChanged;

        private readonly IHistoryService _service;
        private HistoryViewModel _viewModel;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
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

        public bool _status;

        public bool Status
        {
            get { return _status; }
            set
            {
                _status = value;
                OnPropertyChanged("Status");
            }
        }

        public DateTime? _startDate = DateTime.Now;

        public DateTime? StartDate
        {
            get { return _startDate; }
            set
            {
                _startDate = value;
                OnPropertyChanged("StartDate");
            }
        }

        public DateTime? _endDate = DateTime.Now;

        public DateTime? EndDate
        {
            get { return _endDate; }
            set
            {
                _endDate = value;
                OnPropertyChanged("EndDate");
            }
        }

        public int _studentId;

        public int StudentId
        {
            get { return _studentId; }
            set
            {
                _studentId = value;
                OnPropertyChanged("StudentId");
            }
        }

        public int _bookId;

        public int BookId
        {
            get { return _bookId; }
            set
            {
                _bookId = value;
                OnPropertyChanged("BookId");
            }
        }



        public ReplayCommand? CloseWindowCommand { get; set; }

        public ReplayCommand? SaveCommand { get; set; }

        public ActionType? actionType { get; set; }

        public HistoryDetailsViewModel(ActionType aType, int studentId, int bookId, HistoryViewModel viewModel)
        {
            _viewModel = viewModel;
            _service = new HistoryService();

            actionType = aType;
            StudentId = studentId;
            BookId = bookId;

            CloseWindowCommand = new ReplayCommand(CloseWindow);
            SaveCommand = new ReplayCommand(Save);

            if (aType == ActionType.View)
            {
                Title = "borrowing book details".ToUpper();
                GetDetails();
            }

            if (aType == ActionType.Insert)
            {
                Title = "borrow book".ToUpper();
                StudentId = GlobalVariables.StudentId;
                BookId = 1;
                StartDate = DateTime.Now;
                EndDate = DateTime.Now;
            }
        }

        public async void Save(object parameter)
        {
            if (actionType == ActionType.Insert)
            {
                await _service.AddNew(new History()
                {
                    StudentId = StudentId,
                    BookId = BookId,
                    Status = true,
                    StartDate = StartDate,
                    EndDate = EndDate,
                });
            }

            if (actionType == ActionType.View)
            {
                await _service.Update(new History()
                {
                    StudentId = StudentId,
                    BookId = BookId,
                    Status = Status,
                    EndDate = EndDate,
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
            var item = data.SingleOrDefault(
     x => x.StudentId == StudentId
    && x.BookId == BookId);
            if (item != null)
            {
                StudentId = item.StudentId;
                BookId = item?.BookId ?? 0;
                Status = item?.Status ?? false;
                StartDate = item?.StartDate;
                EndDate = item?.EndDate;
            }
        }

    }
}
