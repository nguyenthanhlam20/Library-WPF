using System.Windows;
using WPFApp.UI.Admin.ViewModels.Pages;
using WPFApp.UI.Admin.ViewModels.Windows;
using static WPFApp.Constants.AppConstants;

namespace WPFApp.UI.Admin.Views.Windows
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

            if (AType == ActionType.View)
            {
                //btnSave.Visibility = Visibility.Collapsed;
                txt1.IsEnabled = false;
                txt2.IsEnabled = false;
                txt3.IsEnabled = false;
                txt4.IsEnabled = false;
                txt5.IsEnabled = false;
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
