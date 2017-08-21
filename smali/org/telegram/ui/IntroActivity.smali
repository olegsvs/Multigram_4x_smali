.class public Lorg/telegram/ui/IntroActivity;
.super Landroid/app/Activity;
.source "IntroActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/IntroActivity$EGLThread;,
        Lorg/telegram/ui/IntroActivity$IntroAdapter;,
        Lorg/telegram/ui/IntroActivity$BottomPagesView;
    }
.end annotation


# instance fields
.field private bottomPages:Lorg/telegram/ui/IntroActivity$BottomPagesView;

.field private currentDate:J

.field private currentViewPagerPage:I

.field private dragging:Z

.field private eglThread:Lorg/telegram/ui/IntroActivity$EGLThread;

.field private justCreated:Z

.field private justEndDragging:Z

.field private lastPage:I

.field private localeInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

.field private messages:[Ljava/lang/String;

.field private startDragX:I

.field private startPressed:Z

.field private textView:Landroid/widget/TextView;

.field private titles:[Ljava/lang/String;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    iput v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 130
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 131
    iput-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/IntroActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/ui/IntroActivity$EGLThread;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->eglThread:Lorg/telegram/ui/IntroActivity$EGLThread;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/IntroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/IntroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/IntroActivity;->startPressed:Z

    return p1
.end method

.method static synthetic access$102(Lorg/telegram/ui/IntroActivity;Lorg/telegram/ui/IntroActivity$EGLThread;)Lorg/telegram/ui/IntroActivity$EGLThread;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Lorg/telegram/ui/IntroActivity$EGLThread;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/telegram/ui/IntroActivity;->eglThread:Lorg/telegram/ui/IntroActivity$EGLThread;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->localeInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/IntroActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/IntroActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->titles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/IntroActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->messages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/IntroActivity;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/telegram/ui/IntroActivity;->currentDate:J

    return-wide v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/IntroActivity;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lorg/telegram/ui/IntroActivity;->currentDate:J

    return-wide p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/IntroActivity;)Lorg/telegram/ui/IntroActivity$BottomPagesView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->bottomPages:Lorg/telegram/ui/IntroActivity$BottomPagesView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/IntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/ui/IntroActivity;->currentViewPagerPage:I

    return v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/IntroActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/telegram/ui/IntroActivity;->currentViewPagerPage:I

    return p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/IntroActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->dragging:Z

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/IntroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/IntroActivity;->dragging:Z

    return p1
.end method

.method static synthetic access$702(Lorg/telegram/ui/IntroActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/telegram/ui/IntroActivity;->startDragX:I

    return p1
.end method

.method static synthetic access$802(Lorg/telegram/ui/IntroActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/IntroActivity;->justEndDragging:Z

    return p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/IntroActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;

    .prologue
    .line 70
    iget v0, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/IntroActivity;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/IntroActivity;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    return p1
.end method

.method private checkContinueText()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 416
    const/4 v3, 0x0

    .line 417
    .local v3, "englishInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    const/4 v7, 0x0

    .line 418
    .local v7, "systemInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 419
    .local v2, "currentLocaleInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 420
    .local v8, "systemLang":Ljava/lang/String;
    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v1, v9, v11

    .line 421
    .local v1, "arg":Ljava/lang/String;
    :goto_0
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "mainconfig"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 422
    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string/jumbo v10, "language_showed2"

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getSystemLocaleStringIso639()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_3

    .line 424
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v9

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 425
    .local v4, "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v9, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "en"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 426
    move-object v3, v4

    .line 428
    :cond_0
    iget-object v9, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 429
    :cond_1
    move-object v7, v4

    .line 431
    :cond_2
    if-eqz v3, :cond_6

    if-eqz v7, :cond_6

    .line 435
    .end local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v7, :cond_4

    if-ne v3, v7, :cond_7

    .line 467
    :cond_4
    :goto_2
    return-void

    .end local v0    # "a":I
    .end local v1    # "arg":Ljava/lang/String;
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    move-object v1, v8

    .line 420
    goto :goto_0

    .line 423
    .restart local v0    # "a":I
    .restart local v1    # "arg":Ljava/lang/String;
    .restart local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .restart local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .end local v4    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_7
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;-><init>()V

    .line 439
    .local v6, "req":Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;
    if-eq v7, v2, :cond_8

    .line 440
    iget-object v9, v7, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    .line 441
    iput-object v7, p0, Lorg/telegram/ui/IntroActivity;->localeInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 446
    :goto_3
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->keys:Ljava/util/ArrayList;

    const-string/jumbo v10, "ContinueOnThisLanguage"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/IntroActivity$7;

    invoke-direct {v10, p0}, Lorg/telegram/ui/IntroActivity$7;-><init>(Lorg/telegram/ui/IntroActivity;)V

    const/16 v11, 0x8

    invoke-virtual {v9, v6, v10, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_2

    .line 443
    :cond_8
    iget-object v9, v3, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    const-string/jumbo v10, "_"

    const-string/jumbo v11, "-"

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_langpack_getStrings;->lang_code:Ljava/lang/String;

    .line 444
    iput-object v3, p0, Lorg/telegram/ui/IntroActivity;->localeInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    goto :goto_3
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 471
    sget v0, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    if-ne p1, v0, :cond_0

    .line 472
    invoke-direct {p0}, Lorg/telegram/ui/IntroActivity;->checkContinueText()V

    .line 474
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    const v2, 0x7f090007

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/IntroActivity;->setTheme(I)V

    .line 146
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/IntroActivity;->requestWindowFeature(I)Z

    .line 149
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 150
    .local v17, "preferences":Landroid/content/SharedPreferences;
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "intro_crashed_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Page1Title"

    const v5, 0x7f070514

    .line 153
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Page2Title"

    const v5, 0x7f070516

    .line 154
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Page3Title"

    const v5, 0x7f070518

    .line 155
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Page5Title"

    const v5, 0x7f07051c

    .line 156
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Page4Title"

    const v5, 0x7f07051a

    .line 157
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Page6Title"

    const v5, 0x7f07051e

    .line 158
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity;->titles:[Ljava/lang/String;

    .line 160
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "Page1Message"

    const v5, 0x7f070513

    .line 161
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Page2Message"

    const v5, 0x7f070515

    .line 162
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Page3Message"

    const v5, 0x7f070517

    .line 163
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "Page5Message"

    const v5, 0x7f07051b

    .line 164
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "Page4Message"

    const v5, 0x7f070519

    .line 165
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "Page6Message"

    const v5, 0x7f07051d

    .line 166
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity;->messages:[Ljava/lang/String;

    .line 169
    new-instance v18, Landroid/widget/ScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 170
    .local v18, "scrollView":Landroid/widget/ScrollView;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 172
    new-instance v12, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 173
    .local v12, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 174
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createScroll(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 177
    .local v13, "frameLayout2":Landroid/widget/FrameLayout;
    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x429c0000    # 78.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v21, Landroid/view/TextureView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 180
    .local v21, "textureView":Landroid/view/TextureView;
    const/16 v2, 0xb4

    const/16 v3, 0x8c

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v2, Lorg/telegram/ui/IntroActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/IntroActivity$1;-><init>(Lorg/telegram/ui/IntroActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 218
    new-instance v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/IntroActivity$IntroAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/IntroActivity$IntroAdapter;-><init>(Lorg/telegram/ui/IntroActivity;Lorg/telegram/ui/IntroActivity$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/IntroActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/IntroActivity$2;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 258
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 259
    .local v20, "startMessagingButton":Landroid/widget/TextView;
    const-string/jumbo v2, "StartMessaging"

    const v3, 0x7f0706b0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const/16 v2, 0x30

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 261
    const/4 v2, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 263
    const v2, 0x7f02022a

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 264
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 265
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 266
    .local v9, "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 267
    const/4 v2, 0x0

    new-array v2, v2, [I

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    move-object/from16 v0, v20

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 268
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 270
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_0
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 271
    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x51

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x42980000    # 76.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance v2, Lorg/telegram/ui/IntroActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/IntroActivity$3;-><init>(Lorg/telegram/ui/IntroActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    new-instance v10, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 286
    .local v10, "backToLastButton":Landroid/widget/TextView;
    const-string/jumbo v2, "Go Back"

    const v3, 0x7f0706b0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    const/16 v2, 0x11

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 288
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 289
    const/4 v2, 0x1

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 290
    const v2, 0x7f02022a

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 291
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 292
    new-instance v9, Landroid/animation/StateListAnimator;

    invoke-direct {v9}, Landroid/animation/StateListAnimator;-><init>()V

    .line 293
    .restart local v9    # "animator":Landroid/animation/StateListAnimator;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v10, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 294
    const/4 v2, 0x0

    new-array v2, v2, [I

    const-string/jumbo v3, "translationZ"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v10, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 295
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 297
    .end local v9    # "animator":Landroid/animation/StateListAnimator;
    :cond_1
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 298
    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x51

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x42980000    # 76.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v12, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    const-string/jumbo v2, "userID"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/IntroActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 300
    .local v19, "sharedPref":Landroid/content/SharedPreferences;
    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    const-string/jumbo v2, "!firstLaunch?"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    const-string/jumbo v2, "AddUser"

    const v3, 0x7f0706b0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    const v2, 0x7f0706b0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/IntroActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_0
    new-instance v2, Lorg/telegram/ui/IntroActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/IntroActivity$4;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v2, :cond_2

    .line 324
    new-instance v2, Lorg/telegram/ui/IntroActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/IntroActivity$5;-><init>(Lorg/telegram/ui/IntroActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 333
    :cond_2
    new-instance v2, Lorg/telegram/ui/IntroActivity$BottomPagesView;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/IntroActivity$BottomPagesView;-><init>(Lorg/telegram/ui/IntroActivity;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity;->bottomPages:Lorg/telegram/ui/IntroActivity$BottomPagesView;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IntroActivity;->bottomPages:Lorg/telegram/ui/IntroActivity$BottomPagesView;

    move-object/from16 v22, v0

    const/16 v2, 0x42

    const/high16 v3, 0x40a00000    # 5.0f

    const/16 v4, 0x31

    const/4 v5, 0x0

    const/high16 v6, 0x43af0000    # 350.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    const v3, -0xec6c2e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/4 v2, -0x2

    const/high16 v3, 0x41f00000    # 30.0f

    const/16 v4, 0x51

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/IntroActivity;->textView:Landroid/widget/TextView;

    new-instance v3, Lorg/telegram/ui/IntroActivity$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/IntroActivity$6;-><init>(Lorg/telegram/ui/IntroActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 357
    new-instance v14, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 358
    .local v14, "frameLayout3":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/IntroActivity;->setContentView(Landroid/view/View;)V

    .line 360
    new-instance v16, Landroid/widget/ImageView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 361
    .local v16, "imageView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 362
    .local v11, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v11, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 363
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 367
    .local v15, "frameLayout4":Landroid/widget/FrameLayout;
    const v2, 0x7f020041

    invoke-virtual {v15, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 368
    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const/16 v2, 0x1f2

    const/16 v3, 0x210

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v14, v15, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .end local v11    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "frameLayout3":Landroid/widget/FrameLayout;
    .end local v15    # "frameLayout4":Landroid/widget/FrameLayout;
    .end local v16    # "imageView":Landroid/view/View;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity;->checkContinueText()V

    .line 376
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 377
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/IntroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->handleProxyIntent(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 380
    return-void

    .line 307
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "state_user_0"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "userID"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 371
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/IntroActivity;->setRequestedOrientation(I)V

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/ui/IntroActivity;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    .line 409
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 410
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 411
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 412
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "intro_crashed_time"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 413
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 403
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->unregisterUpdates()V

    .line 404
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 405
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 385
    iget-boolean v0, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    if-eqz v0, :cond_0

    .line 386
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 388
    iput v2, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    .line 393
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/IntroActivity;->justCreated:Z

    .line 395
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForCrashes(Landroid/app/Activity;)V

    .line 396
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->checkForUpdates(Landroid/app/Activity;)V

    .line 397
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 398
    return-void

    .line 390
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/IntroActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 391
    iput v1, p0, Lorg/telegram/ui/IntroActivity;->lastPage:I

    goto :goto_0
.end method
