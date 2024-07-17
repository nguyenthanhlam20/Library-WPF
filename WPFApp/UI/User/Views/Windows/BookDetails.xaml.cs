using System.Windows;
using WPFApp.UI.User.ViewModels.Pages;
using WPFApp.UI.User.ViewModels.Windows;
using static WPFApp.Constants.AppConstants;

namespace WPFApp.UI.User.Views.Windows
{
    public partial class BookDetails : Window
    {
        private BookViewModel _viewModel;
        public ActionType AType { get; set; }

        public int Id { get; set; }

        public BookDetails(BookViewModel viewModel)
        {
            _viewModel = viewModel;
            InitializeComponent();
        }

        public void SetDataContext()
        {
            DataContext = new BookDetailsViewModel(AType, Id, _viewModel);

            if (AType == ActionType.View)
            {
                btnSave.Visibility = Visibility.Collapsed;
                txt1.IsEnabled = false;
                txt2.IsEnabled = false;
                txt3.IsEnabled = false;
            }
        }
    }
}
