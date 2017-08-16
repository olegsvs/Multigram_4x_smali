.class public Lorg/telegram/ui/Cells/ManageChatUserCell;
.super Landroid/widget/FrameLayout;
.source "ManageChatUserCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;
    }
.end annotation


# instance fields
.field private avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

.field private avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

.field private currentName:Ljava/lang/CharSequence;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field private currrntStatus:Ljava/lang/CharSequence;

.field private delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

.field private lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private lastName:Ljava/lang/String;

.field private lastStatus:I

.field private nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private optionsButton:Landroid/widget/ImageView;

.field private statusColor:I

.field private statusOnlineColor:I

.field private statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "padding"    # I
    .param p3, "needOption"    # Z

    .prologue
    const/high16 v9, 0x41e00000    # 28.0f

    const/high16 v11, 0x41a00000    # 20.0f

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x3

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowStatusColor:I

    :goto_0
    iput v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    .line 66
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowOnlineColor:I

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusOnlineColor:I

    .line 68
    new-instance v0, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    .line 70
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 72
    iget-object v10, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v0, 0x30

    const/high16 v1, 0x42400000    # 48.0f

    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_3

    move v2, v7

    :goto_2
    or-int/lit8 v2, v2, 0x30

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_4

    move v3, v6

    :goto_3
    const/high16 v4, 0x41000000    # 8.0f

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_5

    add-int/lit8 v5, p2, 0x7

    int-to-float v5, v5

    :goto_4
    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 75
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_6

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowTitleColor:I

    :goto_5
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    move v0, v7

    :goto_6
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 79
    iget-object v10, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_8

    move v1, v7

    :goto_7
    or-int/lit8 v2, v1, 0x30

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_9

    const/high16 v3, 0x42380000    # 46.0f

    :goto_8
    const/high16 v4, 0x41380000    # 11.5f

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_a

    add-int/lit8 v1, p2, 0x44

    int-to-float v5, v1

    :goto_9
    move v1, v11

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v0, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 83
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_b

    move v0, v7

    :goto_a
    or-int/lit8 v0, v0, 0x30

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setGravity(I)V

    .line 84
    iget-object v10, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, -0x1

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_c

    move v1, v7

    :goto_b
    or-int/lit8 v2, v1, 0x30

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_d

    move v3, v9

    :goto_c
    const/high16 v4, 0x420a0000    # 34.5f

    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_e

    add-int/lit8 v1, p2, 0x44

    int-to-float v5, v1

    :goto_d
    move v1, v11

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v10, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    if-eqz p3, :cond_0

    .line 87
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    const-string/jumbo v1, "stickers_menuSelector"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_f

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->profileRowIconsColor:I

    :goto_e
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    const/16 v1, 0x30

    const/16 v2, 0x40

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_10

    :goto_f
    or-int/lit8 v3, v8, 0x30

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Cells/ManageChatUserCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Cells/ManageChatUserCell$1;-><init>(Lorg/telegram/ui/Cells/ManageChatUserCell;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    return-void

    .line 65
    :cond_1
    const-string/jumbo v0, "windowBackgroundWhiteGrayText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 66
    :cond_2
    const-string/jumbo v0, "windowBackgroundWhiteBlueText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1

    :cond_3
    move v2, v8

    .line 72
    goto/16 :goto_2

    :cond_4
    add-int/lit8 v3, p2, 0x7

    int-to-float v3, v3

    goto/16 :goto_3

    :cond_5
    move v5, v6

    goto/16 :goto_4

    .line 75
    :cond_6
    const-string/jumbo v0, "windowBackgroundWhiteBlackText"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_5

    :cond_7
    move v0, v8

    .line 78
    goto/16 :goto_6

    :cond_8
    move v1, v8

    .line 79
    goto/16 :goto_7

    :cond_9
    add-int/lit8 v1, p2, 0x44

    int-to-float v3, v1

    goto/16 :goto_8

    :cond_a
    const/high16 v5, 0x42380000    # 46.0f

    goto/16 :goto_9

    :cond_b
    move v0, v8

    .line 83
    goto/16 :goto_a

    :cond_c
    move v1, v8

    .line 84
    goto/16 :goto_b

    :cond_d
    add-int/lit8 v1, p2, 0x44

    int-to-float v3, v1

    goto/16 :goto_c

    :cond_e
    move v5, v9

    goto/16 :goto_d

    .line 91
    :cond_f
    const-string/jumbo v0, "stickers_menu"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_e

    :cond_10
    move v8, v7

    .line 93
    goto :goto_f
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/ManageChatUserCell;)Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Cells/ManageChatUserCell;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    return-object v0
.end method

.method private updateTheme()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/16 v7, 0xe

    const v6, -0xdededf

    .line 221
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 222
    .local v2, "themePrefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "tag":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "Contacts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    const-string/jumbo v3, "contactsStatusColor"

    const v4, -0x575758

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "contactsOnlineColor"

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->darkColor:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStatusColors(II)V

    .line 226
    const-string/jumbo v3, "contactsNameColor"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 227
    .local v0, "nameColor":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 228
    iget-object v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v4, "contactsNameSize"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 229
    const-string/jumbo v3, "contactsStatusSize"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStatusSize(I)V

    .line 249
    .end local v0    # "nameColor":I
    :cond_0
    :goto_1
    return-void

    .line 222
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 231
    .restart local v1    # "tag":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "Profile"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    const-string/jumbo v3, "profileTitleColor"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 234
    .restart local v0    # "nameColor":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 235
    iget-object v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 236
    invoke-virtual {p0, v7}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStatusSize(I)V

    goto :goto_1

    .line 244
    .end local v0    # "nameColor":I
    :cond_3
    const-string/jumbo v3, "Pref"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->prefSummaryColor:I

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->lightColor:I

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setStatusColors(II)V

    .line 246
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->prefTitleColor:I

    .line 247
    .restart local v0    # "nameColor":I
    iget-object v3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 124
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 125
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    .line 209
    return-void
.end method

.method public setData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "status"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 104
    if-nez p1, :cond_0

    .line 105
    iput-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 106
    iput-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    .line 107
    iput-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-object p3, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currrntStatus:Ljava/lang/CharSequence;

    .line 114
    iput-object p2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 116
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 117
    iget-object v2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->optionsButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    invoke-interface {v0, p0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;->onOptionsButtonCheck(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V
    .locals 0
    .param p1, "manageChatUserCellDelegate"    # Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    .prologue
    .line 212
    iput-object p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->delegate:Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;

    .line 213
    return-void
.end method

.method public setNameColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 254
    return-void
.end method

.method public setNameSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 258
    return-void
.end method

.method public setStatusColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 261
    iput p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    .line 262
    return-void
.end method

.method public setStatusColors(II)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onlineColor"    # I

    .prologue
    .line 128
    iput p1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    .line 129
    iput p2, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusOnlineColor:I

    .line 130
    return-void
.end method

.method public setStatusSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 266
    return-void
.end method

.method public update(I)V
    .locals 8
    .param p1, "mask"    # I

    .prologue
    .line 133
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const/4 v3, 0x0

    .line 137
    .local v3, "photo":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v1, 0x0

    .line 138
    .local v1, "newName":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_2

    .line 139
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v3, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 141
    :cond_2
    sget-boolean v4, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Cells/ManageChatUserCell;->updateTheme()V

    .line 142
    :cond_3
    if-eqz p1, :cond_a

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "continueUpdate":Z
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_6

    .line 145
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v4, :cond_6

    if-eqz v3, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastAvatar:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-eq v4, v5, :cond_6

    .line 146
    :cond_5
    const/4 v0, 0x1

    .line 149
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_8

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, "newStatus":I
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_7

    .line 152
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v2, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    .line 154
    :cond_7
    iget v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastStatus:I

    if-eq v2, v4, :cond_8

    .line 155
    const/4 v0, 0x1

    .line 158
    .end local v2    # "newStatus":I
    :cond_8
    if-nez v0, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    if-nez v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    if-eqz v4, :cond_9

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_9

    .line 159
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 161
    const/4 v0, 0x1

    .line 164
    :cond_9
    if-eqz v0, :cond_0

    .line 169
    .end local v0    # "continueUpdate":Z
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 170
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_c

    .line 171
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    iput v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastStatus:I

    .line 176
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d

    .line 177
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v1    # "newName":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currrntStatus:Ljava/lang/CharSequence;

    if-eqz v4, :cond_f

    .line 184
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 185
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currrntStatus:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_b
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarImageView:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v5, "50_50"

    iget-object v6, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->avatarDrawable:Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-virtual {v4, v3, v5, v6}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 173
    .restart local v1    # "newName":Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastStatus:I

    goto :goto_1

    .line 180
    :cond_d
    if-nez v1, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "newName":Ljava/lang/String;
    :cond_e
    iput-object v1, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->nameTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 186
    :cond_f
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_b

    .line 187
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_11

    .line 188
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 189
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$User;->bot_chat_history:Z

    if-eqz v4, :cond_10

    .line 190
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "BotStatusRead"

    const v6, 0x7f0700e4

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 192
    :cond_10
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "BotStatusCantRead"

    const v6, 0x7f0700e3

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 195
    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-eq v4, v5, :cond_13

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v5

    if-gt v4, v5, :cond_13

    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->onlinePrivacy:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 196
    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusOnlineColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 197
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string/jumbo v5, "Online"

    const v6, 0x7f0704f9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 199
    :cond_14
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusColor:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 200
    iget-object v4, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->statusTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iget-object v5, p0, Lorg/telegram/ui/Cells/ManageChatUserCell;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->formatUserStatus(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method
