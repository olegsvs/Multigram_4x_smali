.class public Lorg/telegram/ui/ProxySettingsActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "ProxySettingsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final FIELD_IP:I = 0x0

.field private static final FIELD_PASSWORD:I = 0x3

.field private static final FIELD_PORT:I = 0x1

.field private static final FIELD_USER:I = 0x2

.field private static final share_item:I = 0x1


# instance fields
.field private bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

.field private dividers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headerCell:Lorg/telegram/ui/Cells/HeaderCell;

.field private ignoreOnTextChange:Z

.field private inputFields:[Landroid/widget/EditText;

.field private linearLayout2:Landroid/widget/LinearLayout;

.field private scrollView:Landroid/widget/ScrollView;

.field private sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

.field private shareItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

.field private useForCallsInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

.field private useProxyForCalls:Z

.field private useProxySettings:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->dividers:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ProxySettingsActivity;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ProxySettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/ProxySettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    return p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/ui/Cells/TextCheckCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/ui/Cells/TextCheckCell;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/telegram/ui/ProxySettingsActivity;->checkShareButton()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/ProxySettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->ignoreOnTextChange:Z

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/ProxySettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->ignoreOnTextChange:Z

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ProxySettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxyForCalls:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ProxySettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/ProxySettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxyForCalls:Z

    return p1
.end method

.method private checkShareButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAlpha(F)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 118
    .local v12, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "proxy_enabled"

    const/4 v1, 0x0

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    .line 119
    const-string/jumbo v0, "proxy_enabled_calls"

    const/4 v1, 0x0

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxyForCalls:Z

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ProxySettings"

    const v2, 0x7f0705ae

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$1;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f020001

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->shareItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 179
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->fragmentView:Landroid/view/View;

    .line 180
    iget-object v11, p0, Lorg/telegram/ui/ProxySettingsActivity;->fragmentView:Landroid/view/View;

    check-cast v11, Landroid/widget/FrameLayout;

    .line 181
    .local v11, "frameLayout":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->fragmentView:Landroid/view/View;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefBGColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    .line 184
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    const-string/jumbo v1, "actionBarDefault"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setScrollViewEdgeEffectColor(Landroid/widget/ScrollView;I)V

    .line 186
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    .line 189
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v1, "UseProxySettings"

    const v2, 0x7f070719

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$2;

    invoke-direct {v1, p0, v12}, Lorg/telegram/ui/ProxySettingsActivity$2;-><init>(Lorg/telegram/ui/ProxySettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v0, Lorg/telegram/ui/Cells/ShadowSectionCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    .line 218
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_1
    const/4 v0, 0x4

    if-ge v7, v0, :cond_9

    .line 219
    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v9, "container":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const-string/jumbo v0, "windowBackgroundWhite"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 223
    const/4 v0, 0x3

    if-eq v7, v0, :cond_2

    const/4 v8, 0x1

    .line 224
    .local v8, "allowDivider":Z
    :goto_2
    if-eqz v8, :cond_0

    .line 225
    new-instance v10, Landroid/view/View;

    invoke-direct {v10, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 226
    .local v10, "divider":Landroid/view/View;
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    const-string/jumbo v0, "divider"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 228
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x53

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .end local v10    # "divider":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v7

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v0, v7

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_3

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v0, v7

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 239
    if-nez v7, :cond_5

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$3;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const v1, 0x10000005

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 313
    packed-switch v7, :pswitch_data_0

    .line 331
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v0, v7

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 337
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v13, v0, v7

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v13, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$5;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 181
    .end local v7    # "a":I
    .end local v8    # "allowDivider":Z
    .end local v9    # "container":Landroid/widget/FrameLayout;
    :cond_1
    const-string/jumbo v0, "windowBackgroundGray"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 223
    .restart local v7    # "a":I
    .restart local v9    # "container":Landroid/widget/FrameLayout;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 234
    .restart local v8    # "allowDivider":Z
    :cond_3
    const-string/jumbo v0, "windowBackgroundWhiteHintText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3

    .line 235
    :cond_4
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_4

    .line 256
    :cond_5
    const/4 v0, 0x1

    if-ne v7, v0, :cond_6

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$4;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_5

    .line 305
    :cond_6
    const/4 v0, 0x3

    if-ne v7, v0, :cond_7

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_5

    .line 310
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_5

    .line 315
    :pswitch_0
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "UseProxyAddress"

    const v2, 0x7f070713

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "proxy_ip"

    const-string/jumbo v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 319
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "UseProxyPassword"

    const v2, 0x7f070717

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "proxy_pass"

    const-string/jumbo v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 323
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "UseProxyPort"

    const v2, 0x7f070718

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "proxy_port"

    const/16 v3, 0x438

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 327
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "UseProxyUsername"

    const v2, 0x7f07071a

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v7

    const-string/jumbo v1, "proxy_user"

    const-string/jumbo v2, ""

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 336
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_7

    .line 358
    .end local v8    # "allowDivider":Z
    .end local v9    # "container":Landroid/widget/FrameLayout;
    :cond_9
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "UseProxyInfo"

    const v2, 0x7f070716

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    new-instance v0, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const-string/jumbo v1, "UseProxyForCalls"

    const v2, 0x7f070714

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxyForCalls:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    iget-boolean v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsCell:Lorg/telegram/ui/Cells/TextCheckCell;

    new-instance v1, Lorg/telegram/ui/ProxySettingsActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProxySettingsActivity$6;-><init>(Lorg/telegram/ui/ProxySettingsActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    new-instance v0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const v1, 0x7f0200ad

    const-string/jumbo v2, "windowBackgroundGrayShadow"

    invoke-static {p1, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawable(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v1, "UseProxyForCallsInfo"

    const v2, 0x7f070715

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->useForCallsInfoCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    invoke-direct {p0}, Lorg/telegram/ui/ProxySettingsActivity;->checkShareButton()V

    .line 383
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->fragmentView:Landroid/view/View;

    return-object v0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 409
    sget v2, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    if-ne p1, v2, :cond_0

    .line 410
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    if-nez v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 414
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "proxy_enabled"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    .line 415
    iget-boolean v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    if-nez v2, :cond_2

    .line 416
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_0

    .line 418
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 419
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 420
    packed-switch v0, :pswitch_data_0

    .line 419
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    :pswitch_0
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const-string/jumbo v3, "proxy_ip"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 425
    :pswitch_1
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const-string/jumbo v3, "proxy_pass"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 428
    :pswitch_2
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "proxy_port"

    const/16 v5, 0x438

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 431
    :pswitch_3
    iget-object v2, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    const-string/jumbo v3, "proxy_user"

    const-string/jumbo v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
    .locals 11

    .prologue
    .line 441
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v10, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/ui/ActionBar/ThemeDescription;>;"
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->fragmentView:Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGray"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->scrollView:Landroid/widget/ScrollView;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefault"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultIcon"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultTitle"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSelector"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearch"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "actionBarDefaultSearchPlaceholder"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->linearLayout2:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 453
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    array-length v0, v0

    if-ge v9, v0, :cond_1

    .line 454
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v1, v1, v9

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 459
    .end local v9    # "a":I
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_HINTTEXTCOLOR:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhiteHintText"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_1
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->headerCell:Lorg/telegram/ui/Cells/HeaderCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlueHeader"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->sectionCell:Lorg/telegram/ui/Cells/ShadowSectionCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundGrayShadow"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteGrayText4"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->bottomCell:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteLinkText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const/4 v9, 0x0

    .restart local v9    # "a":I
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 469
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->dividers:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "divider"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 472
    :cond_2
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "textView"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "windowBackgroundWhiteBlackText"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumb"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrack"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchThumbChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "checkBox"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "switchTrackChecked"

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "windowBackgroundWhite"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v0, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTORWHITE:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "listSelectorSDK21"

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    return-object v0
.end method

.method public onFragmentCreate()Z
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 89
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 95
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 96
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "proxy_enabled"

    iget-boolean v6, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string/jumbo v5, "proxy_enabled_calls"

    iget-boolean v6, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxyForCalls:Z

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    iget-object v5, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "address":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "password":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "user":Ljava/lang/String;
    iget-object v5, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 102
    .local v3, "port":I
    const-string/jumbo v5, "proxy_ip"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string/jumbo v5, "proxy_pass"

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string/jumbo v5, "proxy_user"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string/jumbo v5, "proxy_port"

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    iget-boolean v5, p0, Lorg/telegram/ui/ProxySettingsActivity;->useProxySettings:Z

    if-eqz v5, :cond_0

    .line 108
    invoke-static {v0, v3, v4, v2}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 113
    return-void

    .line 110
    :cond_0
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-static {v5, v8, v6, v7}, Lorg/telegram/tgnet/ConnectionsManager;->native_setProxySettings(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lorg/telegram/ui/ProxySettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProxySettingsActivity;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 84
    return-void
.end method

.method protected onTransitionAnimationEnd(ZZ)V
    .locals 2
    .param p1, "isOpen"    # Z
    .param p2, "backward"    # Z

    .prologue
    const/4 v1, 0x0

    .line 401
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity;->inputFields:[Landroid/widget/EditText;

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)V

    .line 405
    :cond_0
    return-void
.end method
