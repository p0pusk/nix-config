{ pkgs, ... }:

{
  imports = [
    ./packages.nix
    ./style.nix
    ./hyprland
    ./fish
    ./kitty
    ./waybar
    ./wofi
    ./btop
    ./mako
    ./scripts
  ];

  nixpkgs = {
    config = {
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = _: true;
    };
  };

  home.username = "artemson";
  home.homeDirectory = "/home/artemson";


  home.file = {
    ".clang-format".text = ''
      ---
      Language:        Cpp
      # BasedOnStyle:  Google
      AccessModifierOffset: -1
      AlignAfterOpenBracket: Align
      AlignArrayOfStructures: None
      AlignConsecutiveAssignments:
        Enabled:         false
        AcrossEmptyLines: false
        AcrossComments:  false
        AlignCompound:   false
        PadOperators:    true
      AlignConsecutiveBitFields:
        Enabled:         false
        AcrossEmptyLines: false
        AcrossComments:  false
        AlignCompound:   false
        PadOperators:    false
      AlignConsecutiveDeclarations:
        Enabled:         false
        AcrossEmptyLines: false
        AcrossComments:  false
        AlignCompound:   false
        PadOperators:    false
      AlignConsecutiveMacros:
        Enabled:         false
        AcrossEmptyLines: false
        AcrossComments:  false
        AlignCompound:   false
        PadOperators:    false
      AlignConsecutiveShortCaseStatements:
        Enabled:         false
        AcrossEmptyLines: false
        AcrossComments:  false
        AlignCaseColons: false
      AlignEscapedNewlines: Left
      AlignOperands:   Align
      AlignTrailingComments:
        Kind:            Always
        OverEmptyLines:  0
      AllowAllArgumentsOnNextLine: true
      AllowAllParametersOfDeclarationOnNextLine: true
      AllowShortBlocksOnASingleLine: Never
      AllowShortCaseLabelsOnASingleLine: false
      AllowShortEnumsOnASingleLine: true
      AllowShortFunctionsOnASingleLine: Never
      AllowShortIfStatementsOnASingleLine: WithoutElse
      AllowShortLambdasOnASingleLine: All
      AllowShortLoopsOnASingleLine: true
      AlwaysBreakAfterDefinitionReturnType: None
      AlwaysBreakAfterReturnType: None
      AlwaysBreakBeforeMultilineStrings: true
      AlwaysBreakTemplateDeclarations: Yes
      AttributeMacros:
        - __capability
      BinPackArguments: true
      BinPackParameters: true
      BitFieldColonSpacing: Both
      BraceWrapping:
        AfterCaseLabel:  false
        AfterClass:      false
        AfterControlStatement: Never
        AfterEnum:       false
        AfterExternBlock: false
        AfterFunction:   false
        AfterNamespace:  false
        AfterObjCDeclaration: false
        AfterStruct:     false
        AfterUnion:      false
        BeforeCatch:     false
        BeforeElse:      false
        BeforeLambdaBody: false
        BeforeWhile:     false
        IndentBraces:    false
        SplitEmptyFunction: true
        SplitEmptyRecord: true
        SplitEmptyNamespace: true
      BreakAfterAttributes: Never
      BreakAfterJavaFieldAnnotations: false
      BreakArrays:     true
      BreakBeforeBinaryOperators: None
      BreakBeforeConceptDeclarations: Always
      BreakBeforeBraces: Attach
      BreakBeforeInlineASMColon: OnlyMultiline
      BreakBeforeTernaryOperators: true
      BreakConstructorInitializers: BeforeColon
      BreakInheritanceList: BeforeColon
      BreakStringLiterals: true
      ColumnLimit:     80
      CommentPragmas:  '^ IWYU pragma:'
      CompactNamespaces: false
      ConstructorInitializerIndentWidth: 4
      ContinuationIndentWidth: 4
      Cpp11BracedListStyle: true
      DerivePointerAlignment: true
      DisableFormat:   false
      EmptyLineAfterAccessModifier: Never
      EmptyLineBeforeAccessModifier: LogicalBlock
      ExperimentalAutoDetectBinPacking: false
      FixNamespaceComments: true
      ForEachMacros:
        - foreach
        - Q_FOREACH
        - BOOST_FOREACH
      IfMacros:
        - KJ_IF_MAYBE
      IncludeBlocks:   Regroup
      IncludeCategories:
        - Regex:           '^<ext/.*\.h>'
          Priority:        2
          SortPriority:    0
          CaseSensitive:   false
        - Regex:           '^<.*\.h>'
          Priority:        1
          SortPriority:    0
          CaseSensitive:   false
        - Regex:           '^<.*'
          Priority:        2
          SortPriority:    0
          CaseSensitive:   false
        - Regex:           '.*'
          Priority:        3
          SortPriority:    0
          CaseSensitive:   false
      IncludeIsMainRegex: '([-_](test|unittest))?$'
      IncludeIsMainSourceRegex: '''
      IndentAccessModifiers: false
      IndentCaseBlocks: false
      IndentCaseLabels: true
      IndentExternBlock: AfterExternBlock
      IndentGotoLabels: true
      IndentPPDirectives: None
      IndentRequiresClause: true
      IndentWidth: 2
      IndentWrappedFunctionNames: false
      InsertBraces: false
      InsertNewlineAtEOF: false
      InsertTrailingCommas: None
      IntegerLiteralSeparator:
        Binary: 0
        BinaryMinDigits: 0
        Decimal: 0
        DecimalMinDigits: 0
        Hex: 0
        HexMinDigits: 0
      JavaScriptQuotes: Leave
      JavaScriptWrapImports: true
      KeepEmptyLinesAtTheStartOfBlocks: false
      KeepEmptyLinesAtEOF: false
      LambdaBodyIndentation: Signature
      LineEnding: DeriveLF
      MacroBlockBegin: '''
      MacroBlockEnd: '''
          MaxEmptyLinesToKeep: 1
            NamespaceIndentation: None
              ObjCBinPackProtocolList: Never
                ObjCBlockIndentWidth: 2
                  ObjCBreakBeforeNestedBlockParam: true
                    ObjCSpaceAfterProperty: false
                      ObjCSpaceBeforeProtocolList: true
                        PackConstructorInitializers: NextLine
                          PenaltyBreakAssignment: 2
                            PenaltyBreakBeforeFirstCallParameter: 1
                              PenaltyBreakComment: 300
                                PenaltyBreakFirstLessLess: 120
                                  PenaltyBreakOpenParenthesis: 0
                                    PenaltyBreakString: 1000
                                      PenaltyBreakTemplateDeclaration: 10
                                        PenaltyExcessCharacter: 1000000
                                          PenaltyIndentedWhitespace: 0
                                            PenaltyReturnTypeOnItsOwnLine: 200
                                              PointerAlignment: Left
                                                PPIndentWidth: -1
                                                  QualifierAlignment: Leave
                                                    RawStringFormats:
                                                      - Language: Cpp
                                                        Delimiters:
                                                        - cc
                                                        - CC
                                                        - cpp
                                                        - Cpp
                                                        - CPP
                                                        - 'c ++ '
                                                        - 'C ++ '
                                                        CanonicalDelimiter: '''
          BasedOnStyle: google
            - Language: TextProto
            Delimiters:
            - pb
              - PB
              - proto
              - PROTO
              EnclosingFunctions:
              - EqualsProto
                - EquivToProto
                - PARSE_PARTIAL_TEXT_PROTO
                - PARSE_TEST_PROTO
                - PARSE_TEXT_PROTO
                - ParseTextOrDie
                - ParseTextProtoOrDie
                - ParseTestProto
                - ParsePartialTestProto
                CanonicalDelimiter: pb
                BasedOnStyle: google
                ReferenceAlignment: Pointer
                ReflowComments: true
                        RemoveBracesLLVM: false
                          RemoveParentheses: Leave
                            RemoveSemicolon: false
                              RequiresClausePosition: OwnLine
                                RequiresExpressionIndentation: OuterScope
                                  SeparateDefinitionBlocks: Leave
                                    ShortNamespaceLines: 1
                                      SortIncludes: CaseSensitive
                                        SortJavaStaticImport: Before
                                          SortUsingDeclarations: LexicographicNumeric
                                            SpaceAfterCStyleCast: false
                                              SpaceAfterLogicalNot: false
                                                SpaceAfterTemplateKeyword: true
                                                  SpaceAroundPointerQualifiers: Default
                                                    SpaceBeforeAssignmentOperators: true
                                                      SpaceBeforeCaseColon: false
                                                        SpaceBeforeCpp11BracedList: false
                                                          SpaceBeforeCtorInitializerColon: true
                                                            SpaceBeforeInheritanceColon: true
                                                              SpaceBeforeJsonColon: false
                                                                SpaceBeforeParens: ControlStatements
                                                                  SpaceBeforeParensOptions:
                                                                  AfterControlStatements: true
                                                                    AfterForeachMacros: true
                                                                      AfterFunctionDefinitionName: false
                                                                        AfterFunctionDeclarationName: false
                                                                          AfterIfMacros: true
                                                                            AfterOverloadedOperator: false
                                                                              AfterRequiresInClause: false
                                                                                AfterRequiresInExpression: false
                                                                                  BeforeNonEmptyParentheses: false
                                                                                    SpaceBeforeRangeBasedForLoopColon: true
                                                                                      SpaceBeforeSquareBrackets: false
                                                                                        SpaceInEmptyBlock: false
                                                                                          SpacesBeforeTrailingComments: 2
                                                                                            SpacesInAngles: Never
                                                                                              SpacesInContainerLiterals: true
                                                                                                SpacesInLineCommentPrefix:
                                                                                                Minimum: 1
                                                                                                  Maximum: -1
                                                                                                    SpacesInParens: Never
                                                                                                      SpacesInParensOptions:
                                                                                                      InCStyleCasts: false
                                                                                                        InConditionalStatements: false
                                                                                                          InEmptyParentheses: false
                                                                                                            Other: false
                                                                                                              SpacesInSquareBrackets: false
                                                                                                                Standard: Auto
                                                                                                                  StatementAttributeLikeMacros:
                                                                                                                    - Q_EMIT
                                                                                                                      StatementMacros:
                                                                                                                      - Q_UNUSED
                                                                                                                        - QT_REQUIRE_VERSION
                                                                                                                        TabWidth: 8
                                                                                                                          UseTab: Never
                                                                                                                            VerilogBreakBetweenInstancePorts: true
                                                                                                                              WhitespaceSensitiveMacros:
                                                                                                                              - BOOST_PP_STRINGIZE
                                                                                                                                - CF_SWIFT_NAME
                                                                                                                                - NS_SWIFT_NAME
                                                                                                                                - PP_STRINGIZE
                                                                                                                                - STRINGIZE
        ...

    '';

  };


  home.sessionVariables = {
    EDITOR = "nvim";
    DEFAULT_BROWSER = "${pkgs.firefox}/bin/firefox";
  };

  programs = {
    git = {
      enable = true;
      userName = "p0pusk";
      userEmail = "s0sis0n@yandex.ru";
    };
  };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  systemd.user.startServices = "sd-switch";


  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.11";
}
