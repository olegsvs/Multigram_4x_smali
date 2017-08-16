.class public Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;
.super Lorg/telegram/ui/Components/SlideView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoginActivityPasswordView"
.end annotation


# instance fields
.field private cancelButton:Landroid/widget/TextView;

.field private codeField:Landroid/widget/EditText;

.field private confirmTextView:Landroid/widget/TextView;

.field private currentParams:Landroid/os/Bundle;

.field private current_salt:[B

.field private email_unconfirmed_pattern:Ljava/lang/String;

.field private has_recovery:Z

.field private hint:Ljava/lang/String;

.field private nextPressed:Z

.field private phoneCode:Ljava/lang/String;

.field private phoneHash:Ljava/lang/String;

.field private requestPhone:Ljava/lang/String;

.field private resetAccountButton:Landroid/widget/TextView;

.field private resetAccountText:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/telegram/ui/LoginActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
    .locals 8
    .param p1, "this$0"    # Lorg/telegram/ui/LoginActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1936
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    .line 1937
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SlideView;-><init>(Landroid/content/Context;)V

    .line 1939
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->setOrientation(I)V

    .line 1941
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    .line 1942
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1943
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1944
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1945
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1946
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "LoginPasswordText"

    const v2, 0x7f0703f8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1947
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_1
    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1949
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    .line 1950
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1951
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 1952
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 1953
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1954
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1955
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "LoginPassword"

    const v2, 0x7f0703f7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1957
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1958
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 1959
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 1960
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1961
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 1962
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1963
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 1964
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const/4 v0, -0x1

    const/16 v1, 0x24

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1965
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$1;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1976
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    .line 1977
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    :goto_5
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1978
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteBlueText4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1979
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    const-string/jumbo v1, "ForgotPassword"

    const v2, 0x7f0702df

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1980
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1981
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1983
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/4 v3, -0x2

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    :goto_6
    or-int/lit8 v0, v0, 0x30

    invoke-static {v2, v3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1984
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$2;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2042
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    .line 2043
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    :goto_7
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2044
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteRedText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2045
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2046
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const-string/jumbo v1, "ResetMyAccount"

    const v2, 0x7f0705db

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2049
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2051
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x5

    :goto_8
    or-int/lit8 v2, v2, 0x30

    const/4 v3, 0x0

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2052
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$3;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Lorg/telegram/ui/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2103
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    .line 2104
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x5

    :goto_9
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 2105
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2106
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    const-string/jumbo v1, "windowBackgroundWhiteGrayText6"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2107
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    const-string/jumbo v1, "ResetMyAccountText"

    const v2, 0x7f0705dc

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2108
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2109
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 2110
    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_b

    const/4 v2, 0x5

    :goto_a
    or-int/lit8 v2, v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0xe

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2111
    return-void

    .line 1944
    :cond_1
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 1947
    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_1

    .line 1950
    :cond_3
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2

    .line 1952
    :cond_4
    const-string/jumbo v0, "windowBackgroundWhiteHintText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 1963
    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_4

    .line 1977
    :cond_6
    const/4 v0, 0x3

    goto/16 :goto_5

    .line 1983
    :cond_7
    const/4 v0, 0x3

    goto/16 :goto_6

    .line 2043
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_7

    .line 2051
    :cond_9
    const/4 v2, 0x3

    goto/16 :goto_8

    .line 2104
    :cond_a
    const/4 v0, 0x3

    goto :goto_9

    .line 2110
    :cond_b
    const/4 v2, 0x3

    goto :goto_a
.end method

.method static synthetic access$5100(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->has_recovery:Z

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->requestPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;
    .param p1, "x1"    # Z

    .prologue
    .line 1918
    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->nextPressed:Z

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;
    .param p1, "x1"    # Z

    .prologue
    .line 1918
    invoke-direct {p0, p1}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->onPasscodeError(Z)V

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;

    .prologue
    .line 1918
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->cancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private onPasscodeError(Z)V
    .locals 4
    .param p1, "clear"    # Z

    .prologue
    .line 2149
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2160
    :goto_0
    return-void

    .line 2152
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LoginActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2153
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_1

    .line 2154
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2156
    :cond_1
    if-eqz p1, :cond_2

    .line 2157
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2159
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->confirmTextView:Landroid/widget/TextView;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;FI)V

    goto :goto_0
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2115
    const-string/jumbo v0, "LoginPassword"

    const v1, 0x7f0703f7

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public needBackButton()Z
    .locals 1

    .prologue
    .line 2237
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    .line 2243
    return-void
.end method

.method public onNextPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2164
    iget-boolean v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->nextPressed:Z

    if-eqz v5, :cond_0

    .line 2233
    :goto_0
    return-void

    .line 2168
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2169
    .local v2, "oldPassword":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2170
    invoke-direct {p0, v8}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->onPasscodeError(Z)V

    goto :goto_0

    .line 2173
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->nextPressed:Z

    .line 2174
    const/4 v3, 0x0

    .line 2176
    .local v3, "oldPasswordBytes":[B
    :try_start_0
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2181
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->this$0:Lorg/telegram/ui/LoginActivity;

    # invokes: Lorg/telegram/ui/LoginActivity;->needShowProgress(I)V
    invoke-static {v5, v8}, Lorg/telegram/ui/LoginActivity;->access$2100(Lorg/telegram/ui/LoginActivity;I)V

    .line 2182
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v1, v5, [B

    .line 2183
    .local v1, "hash":[B
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    iget-object v6, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    array-length v6, v6

    invoke-static {v5, v8, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2184
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    array-length v5, v5

    array-length v6, v3

    invoke-static {v3, v8, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2185
    iget-object v5, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    array-length v6, v1

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    array-length v7, v7

    invoke-static {v5, v8, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2187
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;-><init>()V

    .line 2188
    .local v4, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;
    array-length v5, v1

    invoke-static {v1, v8, v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;->password_hash:[B

    .line 2189
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;

    invoke-direct {v6, p0}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView$4;-><init>(Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;)V

    const/16 v7, 0xa

    invoke-virtual {v5, v4, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0

    .line 2177
    .end local v1    # "hash":[B
    .end local v4    # "req":Lorg/telegram/tgnet/TLRPC$TL_auth_checkPassword;
    :catch_0
    move-exception v0

    .line 2178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 2247
    invoke-super {p0}, Lorg/telegram/ui/Components/SlideView;->onShow()V

    .line 2248
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2250
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2251
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 2253
    :cond_0
    return-void
.end method

.method public restoreStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2268
    const-string/jumbo v1, "passview_params"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    .line 2269
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 2270
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->setParams(Landroid/os/Bundle;Z)V

    .line 2272
    :cond_0
    const-string/jumbo v1, "passview_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    .local v0, "code":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2274
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2276
    :cond_1
    return-void
.end method

.method public saveStateParams(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2257
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2258
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2259
    const-string/jumbo v1, "passview_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 2262
    const-string/jumbo v1, "passview_params"

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2264
    :cond_1
    return-void
.end method

.method public setParams(Landroid/os/Bundle;Z)V
    .locals 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "restore"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2120
    if-nez p1, :cond_0

    .line 2146
    :goto_0
    return-void

    .line 2123
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2124
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2125
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2126
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 2129
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountButton:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2130
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->resetAccountText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2131
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2132
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    .line 2133
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    const-string/jumbo v3, "current_salt"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->current_salt:[B

    .line 2134
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    const-string/jumbo v3, "hint"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->hint:Ljava/lang/String;

    .line 2135
    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    const-string/jumbo v3, "has_recovery"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->has_recovery:Z

    .line 2136
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->currentParams:Landroid/os/Bundle;

    const-string/jumbo v1, "email_unconfirmed_pattern"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->email_unconfirmed_pattern:Ljava/lang/String;

    .line 2137
    const-string/jumbo v0, "phoneFormated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->requestPhone:Ljava/lang/String;

    .line 2138
    const-string/jumbo v0, "phoneHash"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneHash:Ljava/lang/String;

    .line 2139
    const-string/jumbo v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->phoneCode:Ljava/lang/String;

    .line 2141
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->hint:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->hint:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 2135
    goto :goto_1

    .line 2144
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityPasswordView;->codeField:Landroid/widget/EditText;

    const-string/jumbo v1, "LoginPassword"

    const v2, 0x7f0703f7

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
