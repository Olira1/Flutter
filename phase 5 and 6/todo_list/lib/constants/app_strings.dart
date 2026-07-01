/// App Strings - Centralized text constants
/// 
/// Why we use this approach:
/// 1. All app text in one place for easy maintenance
/// 2. Supports internationalization (multiple languages)
/// 3. Prevents typos and inconsistent text
/// 4. Professional Flutter development practice
class AppStrings {
  // App Title
  static const String appTitle = 'Todo Master';
  
  // Home Screen
  static const String homeTitle = 'My Todos';
  static const String searchHint = 'Search todos...';
  static const String emptyStateTitle = 'No Todos Yet';
  static const String emptyStateMessage = 'Add your first todo to get started!';
  static const String addTodoFab = 'Add Todo';
  
  // Todo Filters
  static const String filterAll = 'All';
  static const String filterActive = 'Active';
  static const String filterCompleted = 'Completed';
  static const String filterHighPriority = 'High Priority';
  
  // Todo Priorities
  static const String priorityLow = 'Low';
  static const String priorityMedium = 'Medium';
  static const String priorityHigh = 'High';
  
  // Add/Edit Todo Screen
  static const String addTodoTitle = 'Add New Todo';
  static const String editTodoTitle = 'Edit Todo';
  static const String todoTitleLabel = 'Title';
  static const String todoTitleHint = 'Enter todo title';
  static const String todoDescriptionLabel = 'Description';
  static const String todoDescriptionHint = 'Enter description (optional)';
  static const String todoPriorityLabel = 'Priority';
  static const String todoDueDateLabel = 'Due Date';
  
  // Buttons
  static const String saveButton = 'Save';
  static const String cancelButton = 'Cancel';
  static const String deleteButton = 'Delete';
  static const String editButton = 'Edit';
  static const String markCompleteButton = 'Mark Complete';
  static const String markIncompleteButton = 'Mark Incomplete';
  
  // Validation Messages
  static const String titleRequiredError = 'Title is required';
  static const String titleTooLongError = 'Title is too long (max 100 characters)';
  
  // Delete Confirmation
  static const String deleteConfirmTitle = 'Delete Todo';
  static const String deleteConfirmMessage = 'Are you sure you want to delete this todo?';
  
  // Loading and Error States
  static const String loading = 'Loading...';
  static const String errorLoadingTodos = 'Error loading todos';
  static const String errorSavingTodo = 'Error saving todo';
  static const String errorDeletingTodo = 'Error deleting todo';
  static const String retryButton = 'Retry';
  
  // Success Messages
  static const String todoAdded = 'Todo added successfully';
  static const String todoUpdated = 'Todo updated successfully';
  static const String todoDeleted = 'Todo deleted successfully';
  static const String todoCompleted = 'Todo marked as complete';
  static const String todoUncompleted = 'Todo marked as incomplete';
}