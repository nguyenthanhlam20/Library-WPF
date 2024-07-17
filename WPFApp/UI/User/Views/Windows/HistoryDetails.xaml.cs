using System.Windows;
using WPFApp.UI.User.ViewModels.Pages;
using WPFApp.UI.User.ViewModels.Windows;
using static WPFApp.Constants.AppConstants;

namespace WPFApp.UI.User.Views.Windows
{
    public partial class HistoryDetails : Window
    {
        private HistoryViewModel _viewModel;
        public ActionType AType { get; set; }

        public int StudentId { get; set; }
        public int BookId { get; set; }

        public HistoryDetails(HistoryViewModel viewModel)
        {
            _viewModel = viewModel;
            InitializeComponent();
        }

        public void SetDataContext()
        {
            DataContext = new HistoryDetailsViewModel(AType, StudentId, BookId, _viewModel);

            txt1.IsEnabled = false;
            if (AType == ActionType.View)
            {
                //btnSave.Visibility = Visibility.Collapsed;
                txt2.IsEnabled = false;
                //txt3.IsEnabled = false;
            }

            txt1.ItemsSource = _viewModel.Students;
            txt1.DisplayMemberPath = "Name";
            txt1.SelectedValuePath = "Id";

            txt2.ItemsSource = _viewModel.Books;
            txt2.DisplayMemberPath = "Title";
            txt2.SelectedValuePath = "Id";
        }
    }
}
