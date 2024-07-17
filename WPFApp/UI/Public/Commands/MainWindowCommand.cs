using WPFApp.UI.Public.ViewModels;

namespace WPFApp.UI.Public.Commands
{
    public class MainWindowCommand
    {
      
        private MainWindowViewModel _viewModel;
        public MainWindowCommand(MainWindowViewModel viewModel) {
            _viewModel = viewModel;
        }
    }
}
