.class public Lorg/telegram/ui/LoginActivity$PhoneView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneView"
.end annotation


# instance fields
.field private codeField:Landroid/widget/EditText;

.field private codesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private countryButton:Landroid/widget/TextView;

.field private countryState:I

.field private ignoreOnPhoneChange:Z

.field private ignoreOnTextChange:Z

.field private ignoreSelection:Z

.field private nextPressed:Z

.field private phoneField:Lorg/telegram/ui/Components/HintEditText;

.field private phoneFormatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textView:Landroid/widget/TextView;

.field private textView2:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 21
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 601
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 588
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    .line 591
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    .line 592
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    .line 593
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    .line 595
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 596
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 597
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    .line 598
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 603
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->setOrientation(I)V

    .line 605
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/16 v3, 0x24

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$1;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    new-instance v2, Landroid/view/View;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const-string/jumbo v3, "windowBackgroundWhiteGrayLine"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 640
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, -0x3e740000    # -17.5f

    const/high16 v6, 0x40800000    # 4.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 643
    .local v17, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 644
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string/jumbo v3, "+"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    new-instance v2, Landroid/widget/EditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v3, "windowBackgroundWhiteBlackText"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 656
    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 657
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 663
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/text/InputFilter;

    .line 664
    .local v14, "inputFilters":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v14, v2

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/16 v2, 0x37

    const/16 v3, 0x24

    const/high16 v4, -0x3ef00000    # -9.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$2;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$3;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 753
    new-instance v2, Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/HintEditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setInputType(I)V

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_1
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/HintEditText;->setTextColor(I)V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_7

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_2
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/HintEditText;->setHintTextColor(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/HintEditText;->setPadding(IIII)V

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/HintEditText;->setTextSize(IF)V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setMaxLines(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setGravity(I)V

    .line 763
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const v3, 0x10000005

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setImeOptions(I)V

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, -0x1

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$4;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$5;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 850
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string/jumbo v3, "StartText"

    const v4, 0x7f0706b1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const-string/jumbo v3, "windowBackgroundWhiteGrayText6"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    :goto_4
    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LoginActivity$PhoneView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 858
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 860
    .local v15, "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v18, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string/jumbo v4, "countries.txt"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 862
    .local v18, "reader":Ljava/io/BufferedReader;
    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .local v16, "line":Ljava/lang/String;
    if-eqz v16, :cond_a

    .line 863
    const-string/jumbo v2, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 864
    .local v9, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    const/4 v3, 0x2

    aget-object v3, v9, v3

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x2

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    array-length v2, v9

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v9, v3

    const/4 v4, 0x3

    aget-object v4, v9, v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const/4 v3, 0x2

    aget-object v3, v9, v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 873
    .end local v9    # "args":[Ljava/lang/String;
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v12

    .line 874
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 877
    .end local v12    # "e":Ljava/lang/Exception;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/LoginActivity$PhoneView$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/LoginActivity$PhoneView$6;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Lorg/telegram/ui/LoginActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 884
    const/4 v10, 0x0

    .line 887
    .local v10, "country":Ljava/lang/String;
    :try_start_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/telephony/TelephonyManager;

    .line 888
    .local v19, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v19, :cond_2

    .line 889
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 895
    .end local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_7
    if-eqz v10, :cond_3

    .line 896
    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 897
    .local v11, "countryName":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 899
    .local v13, "index":I
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 901
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 905
    .end local v11    # "countryName":Ljava/lang/String;
    .end local v13    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    const-string/jumbo v3, "ChooseCountry"

    const v4, 0x7f07018d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 908
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 911
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_b

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 917
    :goto_8
    return-void

    .line 612
    .end local v10    # "country":Ljava/lang/String;
    .end local v14    # "inputFilters":[Landroid/text/InputFilter;
    .end local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_5
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 755
    .restart local v14    # "inputFilters":[Landroid/text/InputFilter;
    .restart local v17    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_6
    const-string/jumbo v2, "windowBackgroundWhiteBlackText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_1

    .line 756
    :cond_7
    const-string/jumbo v2, "windowBackgroundWhiteHintText"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 854
    :cond_8
    const/4 v2, 0x3

    goto/16 :goto_3

    .line 856
    :cond_9
    const/4 v4, 0x3

    goto/16 :goto_4

    .line 872
    .restart local v15    # "languageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "line":Ljava/lang/String;
    .restart local v18    # "reader":Ljava/io/BufferedReader;
    :cond_a
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    .line 891
    .end local v16    # "line":Ljava/lang/String;
    .end local v18    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "country":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 892
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 915
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_8
.end method

.method static synthetic access$1000(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/LoginActivity$PhoneView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnPhoneChange:Z

    return p1
.end method

.method static synthetic access$1802(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/LoginActivity$PhoneView;)Lorg/telegram/ui/Components/HintEditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/LoginActivity$PhoneView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/LoginActivity$PhoneView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7200(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->textView2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/LoginActivity$PhoneView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;

    .prologue
    .line 579
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/LoginActivity$PhoneView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$PhoneView;
    .param p1, "x1"    # I

    .prologue
    .line 579
    iput p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    return p1
.end method


# virtual methods
.method public fillNumber()V
    .locals 15

    .prologue
    .line 1091
    :try_start_0
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 1092
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v12

    if-eqz v12, :cond_3

    .line 1093
    const/4 v1, 0x1

    .line 1094
    .local v1, "allowCall":Z
    const/4 v2, 0x1

    .line 1095
    .local v2, "allowSms":Z
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_7

    .line 1096
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_4

    const/4 v1, 0x1

    .line 1097
    :goto_0
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "android.permission.RECEIVE_SMS"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    const/4 v2, 0x1

    .line 1098
    :goto_1
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->checkShowPermissions:Z
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2200(Lorg/telegram/ui/LoginActivity;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    .line 1099
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2300(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1100
    if-nez v1, :cond_0

    .line 1101
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2300(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    const-string/jumbo v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_0
    if-nez v2, :cond_1

    .line 1104
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2300(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    const-string/jumbo v13, "android.permission.RECEIVE_SMS"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1106
    :cond_1
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2300(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    .line 1107
    sget-object v12, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v13, "mainconfig"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1108
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "firstloginshow"

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "android.permission.RECEIVE_SMS"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1109
    :cond_2
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string/jumbo v13, "firstloginshow"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1110
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v3, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1111
    .local v3, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v12, "AppName"

    const v13, 0x7f07007d

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1112
    const-string/jumbo v12, "OK"

    const v13, 0x7f0704f5

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1113
    const-string/jumbo v12, "AllowFillNumber"

    const v13, 0x7f070065

    invoke-static {v12, v13}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1114
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    iget-object v13, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v13

    # setter for: Lorg/telegram/ui/LoginActivity;->permissionsShowDialog:Landroid/app/Dialog;
    invoke-static {v12, v13}, Lorg/telegram/ui/LoginActivity;->access$2402(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1154
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v3    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_2
    return-void

    .line 1096
    .restart local v1    # "allowCall":Z
    .restart local v2    # "allowSms":Z
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1097
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1116
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v12}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v13

    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v12}, Lorg/telegram/ui/LoginActivity;->access$2300(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v14, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsShowItems:Ljava/util/ArrayList;
    invoke-static {v14}, Lorg/telegram/ui/LoginActivity;->access$2300(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    const/4 v14, 0x7

    invoke-virtual {v13, v12, v14}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1151
    .end local v1    # "allowCall":Z
    .end local v2    # "allowSms":Z
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v5

    .line 1152
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1122
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "allowCall":Z
    .restart local v2    # "allowSms":Z
    .restart local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    if-nez v1, :cond_8

    if-eqz v2, :cond_3

    .line 1123
    :cond_8
    :try_start_1
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1124
    .local v6, "number":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1125
    .local v10, "textToSet":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1126
    .local v7, "ok":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1127
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-le v12, v13, :cond_a

    .line 1128
    const/4 v0, 0x4

    .local v0, "a":I
    :goto_3
    const/4 v12, 0x1

    if-lt v0, v12, :cond_9

    .line 1129
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1130
    .local v9, "sub":Ljava/lang/String;
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codesMap:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1131
    .local v4, "country":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 1132
    const/4 v7, 0x1

    .line 1133
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1134
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v12, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1138
    .end local v4    # "country":Ljava/lang/String;
    .end local v9    # "sub":Ljava/lang/String;
    :cond_9
    if-nez v7, :cond_a

    .line 1139
    const/4 v12, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1140
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1143
    .end local v0    # "a":I
    :cond_a
    if-eqz v10, :cond_3

    .line 1144
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v12}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 1145
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v12, v10}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1146
    iget-object v12, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    iget-object v13, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1128
    .restart local v0    # "a":I
    .restart local v4    # "country":Ljava/lang/String;
    .restart local v9    # "sub":Ljava/lang/String;
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1175
    const-string/jumbo v0, "YourPhone"

    const v1, 0x7f07079e

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 935
    iget-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    if-eqz v1, :cond_0

    .line 936
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreSelection:Z

    .line 943
    :goto_0
    return-void

    .line 939
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 940
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 941
    .local v0, "str":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 942
    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    goto :goto_0
.end method

.method public onNextPressed()V
    .locals 22

    .prologue
    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1087
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v19, "phone"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 956
    .local v17, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v18

    if-eqz v18, :cond_6

    const/16 v16, 0x1

    .line 957
    .local v16, "simcardAvailable":Z
    :goto_1
    const/4 v3, 0x1

    .line 958
    .local v3, "allowCall":Z
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    if-eqz v16, :cond_5

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_7

    const/4 v3, 0x1

    .line 960
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_8

    const/4 v5, 0x1

    .line 961
    .local v5, "allowSms":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "android.permission.CALL_PHONE"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_9

    const/4 v4, 0x1

    .line 962
    .local v4, "allowCancelCall":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->checkPermissions:Z
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1500(Lorg/telegram/ui/LoginActivity;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 964
    if-nez v3, :cond_2

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    const-string/jumbo v19, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_2
    if-nez v5, :cond_3

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    const-string/jumbo v19, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    :cond_3
    if-nez v4, :cond_4

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    const-string/jumbo v19, "android.permission.CALL_PHONE"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    const-string/jumbo v19, "android.permission.WRITE_CALL_LOG"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    const-string/jumbo v19, "android.permission.READ_CALL_LOG"

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_4
    const/4 v10, 0x1

    .line 976
    .local v10, "ok":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    .line 977
    sget-object v18, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v19, "mainconfig"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 978
    .local v13, "preferences":Landroid/content/SharedPreferences;
    if-nez v4, :cond_a

    if-eqz v3, :cond_a

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 1000
    :goto_5
    if-nez v10, :cond_0

    .line 1007
    .end local v4    # "allowCancelCall":Z
    .end local v5    # "allowSms":Z
    .end local v10    # "ok":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AppName"

    const v20, 0x7f07007d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "ChooseCountry"

    const v21, 0x7f07018d

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v18 .. v20}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 956
    .end local v3    # "allowCall":Z
    .end local v16    # "simcardAvailable":Z
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 959
    .restart local v3    # "allowCall":Z
    .restart local v16    # "simcardAvailable":Z
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 960
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 961
    .restart local v5    # "allowSms":Z
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 980
    .restart local v4    # "allowCancelCall":Z
    .restart local v10    # "ok":Z
    .restart local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_a
    const-string/jumbo v18, "firstlogin"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "android.permission.READ_PHONE_STATE"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "android.permission.RECEIVE_SMS"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 981
    :cond_b
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string/jumbo v19, "firstlogin"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 982
    new-instance v6, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 983
    .local v6, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string/jumbo v18, "AppName"

    const v19, 0x7f07007d

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 984
    const-string/jumbo v18, "OK"

    const v19, 0x7f0704f5

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_c

    .line 986
    const-string/jumbo v18, "AllowReadCallAndSms"

    const v19, 0x7f070067

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 992
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v19, v0

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lorg/telegram/ui/LoginActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v19

    # setter for: Lorg/telegram/ui/LoginActivity;->permissionsDialog:Landroid/app/Dialog;
    invoke-static/range {v18 .. v19}, Lorg/telegram/ui/LoginActivity;->access$1702(Lorg/telegram/ui/LoginActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 987
    :cond_c
    if-nez v5, :cond_d

    .line 988
    const-string/jumbo v18, "AllowReadSms"

    const v19, 0x7f070068

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 990
    :cond_d
    const-string/jumbo v18, "AllowReadCall"

    const v19, 0x7f070066

    invoke-static/range {v18 .. v19}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_6

    .line 995
    .end local v6    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v20, v0

    # getter for: Lorg/telegram/ui/LoginActivity;->permissionsItems:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lorg/telegram/ui/LoginActivity;->access$1600(Lorg/telegram/ui/LoginActivity;)Ljava/util/ArrayList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    const/16 v20, 0x6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 996
    :catch_0
    move-exception v8

    .line 997
    .local v8, "ignore":Ljava/lang/Exception;
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 1010
    .end local v4    # "allowCancelCall":Z
    .end local v5    # "allowSms":Z
    .end local v8    # "ignore":Ljava/lang/Exception;
    .end local v10    # "ok":Z
    .end local v13    # "preferences":Landroid/content/SharedPreferences;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    sget-boolean v18, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "999"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AppName"

    const v20, 0x7f07007d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "WrongCountry"

    const v21, 0x7f070782

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v18 .. v20}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->length()I

    move-result v18

    if-nez v18, :cond_11

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AppName"

    const v20, 0x7f07007d

    invoke-static/range {v19 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "InvalidPhoneNumber"

    const v21, 0x7f07038b

    invoke-static/range {v20 .. v21}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowAlert(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v18 .. v20}, Lorg/telegram/ui/LoginActivity;->access$300(Lorg/telegram/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1019
    :cond_11
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/tgnet/ConnectionsManager;->cleanup()V

    .line 1020
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;-><init>()V

    .line 1021
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1022
    .local v12, "phone":Ljava/lang/String;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/telegram/tgnet/ConnectionsManager;->applyCountryPortNumber(Ljava/lang/String;)V

    .line 1023
    sget-object v18, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_hash:Ljava/lang/String;

    .line 1024
    sget v18, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    move/from16 v0, v18

    iput v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->api_id:I

    .line 1025
    iput-object v12, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->phone_number:Ljava/lang/String;

    .line 1026
    if-eqz v16, :cond_14

    if-eqz v3, :cond_14

    const/16 v18, 0x1

    :goto_7
    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    .line 1027
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 1029
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v9

    .line 1030
    .local v9, "number":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_16

    .line 1031
    invoke-virtual {v12, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_15

    :cond_12
    const/16 v18, 0x1

    :goto_8
    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    .line 1032
    iget-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 1033
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1043
    .end local v9    # "number":Ljava/lang/String;
    :cond_13
    :goto_9
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1044
    .local v11, "params":Landroid/os/Bundle;
    const-string/jumbo v18, "phone"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :try_start_2
    const-string/jumbo v18, "ephone"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lorg/telegram/PhoneFormat/PhoneFormat;->stripExceptNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1051
    :goto_a
    const-string/jumbo v18, "phoneFormated"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/LoginActivity$PhoneView;->nextPressed:Z

    .line 1053
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v18

    new-instance v19, Lorg/telegram/ui/LoginActivity$PhoneView$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11, v14}, Lorg/telegram/ui/LoginActivity$PhoneView$7;-><init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/os/Bundle;Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;)V

    const/16 v20, 0x1b

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v14, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v15

    .line 1086
    .local v15, "reqId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V
    invoke-static {v0, v15}, Lorg/telegram/ui/LoginActivity;->access$2100(Lorg/telegram/ui/LoginActivity;I)V

    goto/16 :goto_0

    .line 1026
    .end local v11    # "params":Landroid/os/Bundle;
    .end local v15    # "reqId":I
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 1031
    .restart local v9    # "number":Ljava/lang/String;
    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 1036
    :cond_16
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->current_number:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_9

    .line 1038
    .end local v9    # "number":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 1039
    .local v7, "e":Ljava/lang/Exception;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v14, Lorg/telegram/tgnet/TLRPC$TL_auth_sendCode;->allow_flashcall:Z

    .line 1040
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1047
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v7

    .line 1048
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1049
    const-string/jumbo v18, "ephone"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "+"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 948
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 1158
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1162
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/HintEditText;->requestFocus()Z

    .line 1163
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/HintEditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintEditText;->setSelection(I)V

    .line 1170
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/LoginActivity$PhoneView;->fillNumber()V

    .line 1171
    return-void

    .line 1165
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1192
    const-string/jumbo v2, "phoneview_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1193
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1194
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    :cond_0
    const-string/jumbo v2, "phoneview_phone"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1197
    .local v1, "phone":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1198
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/HintEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1182
    const-string/jumbo v2, "phoneview_code"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/HintEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, "phone":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1186
    const-string/jumbo v2, "phoneview_phone"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    :cond_1
    return-void
.end method

.method public selectCountry(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 920
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesArray:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 921
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 922
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 923
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 924
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 925
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryButton:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v3, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneFormatMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 927
    .local v1, "hint":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->phoneField:Lorg/telegram/ui/Components/HintEditText;

    if-eqz v1, :cond_1

    const/16 v3, 0x58

    const/16 v5, 0x2013

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/HintEditText;->setHintText(Ljava/lang/String;)V

    .line 928
    iput v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->countryState:I

    .line 929
    iput-boolean v6, p0, Lorg/telegram/ui/LoginActivity$PhoneView;->ignoreOnTextChange:Z

    .line 931
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "hint":Ljava/lang/String;
    :cond_0
    return-void

    .line 927
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "hint":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
