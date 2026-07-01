lib/
├── main.dart                    # App entry point
├── models/                      # Data models
│   └── todo.dart               # Todo data structure
├── screens/                     # Full-screen pages
│   ├── home_screen.dart        # Main todo list screen
│   └── add_todo_screen.dart    # Add/Edit todo screen
├── widgets/                     # Reusable UI components
│   ├── todo_tile.dart          # Individual todo item
│   ├── search_bar_widget.dart  # Search functionality
│   ├── filter_chip_widget.dart # Filter buttons
│   ├── empty_state.dart        # When no todos exist
│   └── loading_widget.dart     # Loading indicators
├── services/                    # Business logic & API calls
│   └── api_service.dart        # HTTP requests
└── constants/                   # App-wide constants
    ├── app_colors.dart         # Color definitions
    └── app_strings.dart        # Text constants
