.class public Lorg/telegram/ui/Components/ShareAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ShareAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;,
        Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    }
.end annotation


# instance fields
.field private animatorSet:Landroid/animation/AnimatorSet;

.field private commentTextView:Landroid/widget/EditText;

.field private copyLinkOnEnd:Z

.field private doneButton:Landroid/widget/LinearLayout;

.field private doneButtonBadgeTextView:Landroid/widget/TextView;

.field private doneButtonTextView:Landroid/widget/TextView;

.field private exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field private favsFirst:Z

.field private frameLayout:Landroid/widget/FrameLayout;

.field private frameLayout2:Landroid/widget/FrameLayout;

.field private gridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private isPublicChannel:Z

.field private layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private linkToCopy:Ljava/lang/String;

.field private listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

.field private loadingLink:Z

.field private nameTextView:Landroid/widget/EditText;

.field private quoteSwitch:Lorg/telegram/ui/Components/Switch;

.field private quoteTextView:Landroid/widget/TextView;

.field private scrollOffsetY:I

.field private searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

.field private searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private selectedDialogs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field private sendingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private sendingText:Ljava/lang/String;

.field private shadow:Landroid/view/View;

.field private shadow2:Landroid/view/View;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private textColor:I

.field private topBeforeSwitch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "publicChannel"    # Z
    .param p5, "copyLink"    # Ljava/lang/String;
    .param p6, "fullScreen"    # Z

    .prologue
    .line 113
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    .line 114
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 115
    .local v8, "plusPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "directShareFavsFirst"

    const/4 v2, 0x0

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->favsFirst:Z

    .line 116
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 117
    .local v12, "themePrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "chatAttachTextColor"

    const v2, -0x8a8a8b

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 118
    .local v11, "textColorGray":I
    const-string/jumbo v1, "chatAttachTextColor"

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->defColor:I

    invoke-interface {v12, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ShareAlert;->textColor:I

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020240

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 122
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    .line 123
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 124
    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    .line 125
    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    .line 126
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:Ljava/lang/String;

    .line 128
    if-eqz p4, :cond_0

    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    .line 130
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    .line 131
    .local v10, "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    .line 132
    move-object/from16 v0, p2

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 133
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$1;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$1;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    invoke-virtual {v1, v10, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 152
    .end local v10    # "req":Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$2;

    move-object/from16 v0, p1

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$2;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    .line 207
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 208
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    sget v2, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingLeft:I

    const/4 v3, 0x0

    sget v4, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 210
    new-instance v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    .line 211
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$3;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 219
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    .line 220
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const-string/jumbo v2, "dialogButtonSelector"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41a80000    # 21.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 223
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/16 v5, 0x35

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$4;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 267
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_6

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41480000    # 12.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const-string/jumbo v3, "dialogBadgeBackground"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/ShareAlert;->textColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 271
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41b80000    # 23.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 272
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 273
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/16 v2, 0x17

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    .line 276
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 277
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 279
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/16 v5, 0x10

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "plusconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 290
    .local v9, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Lorg/telegram/ui/Components/Switch;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    .line 291
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    const-string/jumbo v2, "chat"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Switch;->setTag(Ljava/lang/Object;)V

    .line 292
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    .line 293
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    .line 294
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    .line 295
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Switch;->setClickable(Z)V

    .line 296
    const-string/jumbo v1, "directShareQuote"

    const/4 v2, 0x1

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ShareAlert;->setCheck(Z)V

    .line 297
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->setCheckColor()V

    .line 298
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x13

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$5;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    new-instance v1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    .line 309
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x41100000    # 9.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 310
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->textColor:I

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 313
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "Quote"

    const v3, 0x7f0705b2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    .line 318
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v2, "ShareSendTo"

    const v3, 0x7f070677

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 320
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 321
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 322
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 323
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const-string/jumbo v2, "dialogTextHint"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 325
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 326
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 327
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 328
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    sget-boolean v2, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v2, :cond_9

    const v2, -0x8a8a8b

    if-eq v11, v2, :cond_8

    .end local v11    # "textColorGray":I
    :goto_4
    invoke-virtual {v1, v11}, Landroid/widget/EditText;->setTextColor(I)V

    .line 329
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/high16 v4, 0x42400000    # 48.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x42c00000    # 96.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$6;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 370
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 371
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 374
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 375
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    .line 376
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 377
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$7;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$7;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 391
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    move-object/from16 v0, p1

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;-><init>(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 393
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_b

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    :goto_5
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 394
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$8;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$9;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 427
    new-instance v1, Lorg/telegram/ui/Components/EmptyTextProgressView;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    .line 428
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    .line 429
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 430
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "NoChats"

    const v3, 0x7f07046d

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 432
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    new-instance v1, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    .line 437
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    const v2, 0x7f0200b7

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 438
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    const/4 v1, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x33

    const/4 v4, 0x0

    const/high16 v5, 0x42400000    # 48.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    new-instance v1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    .line 441
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    sget-boolean v1, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v1, :cond_c

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->chatAttachBGColor:I

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 442
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/high16 v2, 0x42540000    # 53.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 443
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x53

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    new-instance v2, Lorg/telegram/ui/Components/ShareAlert$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ShareAlert$10;-><init>(Lorg/telegram/ui/Components/ShareAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 451
    new-instance v1, Landroid/widget/EditText;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    .line 452
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const-string/jumbo v2, "ShareComment"

    const v3, 0x7f070671

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 454
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 455
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 456
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 457
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const-string/jumbo v2, "dialogTextHint"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 459
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 460
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/16 v2, 0x4001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 461
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    .line 462
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const-string/jumbo v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 463
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    const/4 v1, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x33

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    new-instance v1, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    .line 466
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    const v2, 0x7f0200b8

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 467
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    const/high16 v2, 0x42540000    # 53.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 468
    iget-object v13, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v14, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    const/4 v1, -0x1

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v13, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateSelectedCount()V

    .line 472
    sget-boolean v1, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    if-nez v1, :cond_2

    .line 473
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 474
    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->checkInviteText()V

    .line 475
    const/4 v1, 0x1

    sput-boolean v1, Lorg/telegram/ui/DialogsActivity;->dialogsLoaded:Z

    .line 477
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-static {v1}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->access$2600(Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 478
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 480
    :cond_3
    return-void

    .line 120
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .restart local v11    # "textColorGray":I
    :cond_4
    const-string/jumbo v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .line 211
    :cond_5
    const-string/jumbo v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_1

    .line 267
    :cond_6
    const-string/jumbo v1, "dialogBadgeText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_2

    .line 310
    .restart local v9    # "preferences":Landroid/content/SharedPreferences;
    :cond_7
    const v1, -0x686869

    goto/16 :goto_3

    .line 328
    :cond_8
    const v11, -0xdededf

    goto/16 :goto_4

    :cond_9
    const-string/jumbo v2, "dialogTextBlack"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_4

    .line 393
    .end local v11    # "textColorGray":I
    :cond_a
    const v1, -0xa0909

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v1, "dialogScrollGlow"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_5

    .line 441
    :cond_c
    const-string/jumbo v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_6
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/ShareAlert;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->copyLinkOnEnd:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ShareAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ShareAlert;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->sendingText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ShareAlert;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ShareAlert;->copyLink(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->setCheckColor()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->nameTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/Components/ShareAlert;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/telegram/ui/Components/ShareAlert;->topBeforeSwitch:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->getCurrentTop()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->layoutManager:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ShareAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ShareAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->favsFirst:Z

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ShareAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/ShareAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ShareAlert;->loadingLink:Z

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ShareAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->searchAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lorg/telegram/ui/Components/ShareAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ShareAlert;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ShareAlert;

    .prologue
    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private copyLink(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 528
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 539
    :goto_0
    return-void

    .line 532
    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 533
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string/jumbo v4, "label"

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    :goto_1
    invoke-static {v4, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 534
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 535
    const-string/jumbo v3, "LinkCopied"

    const v4, 0x7f0703de

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 533
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "clipboard":Landroid/content/ClipboardManager;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->exportedMessageLink:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getCurrentTop()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_1

    .line 484
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "child":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 486
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    if-eqz v1, :cond_1

    .line 487
    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    :cond_0
    sub-int v2, v3, v2

    .line 490
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    :goto_0
    return v2

    :cond_1
    const/16 v2, -0x3e8

    goto :goto_0
.end method

.method private setCheckColor()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->textColor:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Switch;->setColor(I)V

    .line 552
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/ShareAlert;->textColor:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 553
    :cond_0
    return-void

    .line 552
    :cond_1
    const v0, -0x686869

    goto :goto_0
.end method

.method private showCommentTextView(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/high16 v2, 0x42540000    # 53.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    if-ne p1, v0, :cond_1

    .line 587
    :goto_1
    return-void

    :cond_0
    move v0, v4

    .line 556
    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 562
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->commentTextView:Landroid/widget/EditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 564
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    .line 565
    iget-object v5, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    new-array v6, v0, [Landroid/animation/Animator;

    iget-object v7, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow2:Landroid/view/View;

    const-string/jumbo v8, "translationY"

    new-array v9, v3, [F

    if-eqz p1, :cond_4

    move v0, v1

    .line 566
    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    aput v0, v9, v4

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v6, v4

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout2:Landroid/widget/FrameLayout;

    const-string/jumbo v7, "translationY"

    new-array v8, v3, [F

    if-eqz p1, :cond_5

    .line 567
    :goto_4
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v8, v4

    invoke-static {v0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v6, v3

    .line 565
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 568
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ShareAlert$11;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ShareAlert$11;-><init>(Lorg/telegram/ui/Components/ShareAlert;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->animatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 562
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    move v0, v2

    .line 565
    goto :goto_3

    :cond_5
    move v1, v2

    .line 566
    goto :goto_4
.end method

.method private updateLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 511
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 515
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 516
    .local v1, "holder":Lorg/telegram/ui/Components/RecyclerListView$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v3, v4, v5

    .line 517
    .local v3, "top":I
    if-lez v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v3

    .line 518
    .local v2, "newOffset":I
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_0

    .line 519
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->gridView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 520
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->frameLayout:Landroid/widget/FrameLayout;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 521
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->shadow:Landroid/view/View;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 522
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->searchEmptyView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget v5, p0, Lorg/telegram/ui/Components/ShareAlert;->scrollOffsetY:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTranslationY(F)V

    .line 523
    iget-object v4, p0, Lorg/telegram/ui/Components/ShareAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 496
    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    if-ne p1, v0, :cond_1

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->listAdapter:Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShareAlert$ShareDialogsAdapter;->fetchDialogs()V

    .line 500
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 502
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 617
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 618
    return-void
.end method

.method public setCheck(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->resetLayout()V

    .line 544
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->requestLayout()V

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->quoteSwitch:Lorg/telegram/ui/Components/Switch;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    .line 547
    invoke-direct {p0}, Lorg/telegram/ui/Components/ShareAlert;->setCheckColor()V

    .line 548
    return-void
.end method

.method public updateSelectedCount()V
    .locals 7

    .prologue
    const v6, 0x7f07063c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 591
    invoke-direct {p0, v4}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ShareAlert;->isPublicChannel:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->linkToCopy:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "dialogTextGray4"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    :goto_0
    sget-boolean v0, Lorg/telegram/ui/ActionBar/Theme;->usePlusTheme:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/Components/ShareAlert;->textColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 612
    :cond_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "dialogTextBlue2"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 600
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "CopyLink"

    const v2, 0x7f0701cb

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/ShareAlert;->showCommentTextView(Z)V

    .line 604
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 605
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonBadgeTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/Components/ShareAlert;->selectedDialogs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "dialogTextBlue3"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 609
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert;->doneButtonTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
