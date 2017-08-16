.class Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
.super Landroid/widget/PopupWindow;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/EmojiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmojiPopupWindow"
.end annotation


# instance fields
.field private mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 370
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 371
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 372
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;II)V
    .locals 0
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 379
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 380
    invoke-direct {p0, p2, p3}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 381
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 382
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 375
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 377
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;)V
    .locals 0
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 384
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 385
    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    .line 386
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 387
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V
    .locals 0
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 394
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 395
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 396
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 397
    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;IIZ)V
    .locals 0
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "focusable"    # Z

    .prologue
    .line 389
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->this$0:Lorg/telegram/ui/Components/EmojiView;

    .line 390
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 391
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->init()V

    .line 392
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 400
    # getter for: Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2400()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    :try_start_0
    # getter for: Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2400()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 403
    # getter for: Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2400()Ljava/lang/reflect/Field;

    move-result-object v1

    # getter for: Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-static {}, Lorg/telegram/ui/Components/EmojiView;->access$2500()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    goto :goto_0
.end method

.method private registerListener(Landroid/view/View;)V
    .locals 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 420
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_1

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 422
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eq v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 426
    :cond_0
    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 427
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 431
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    return-void

    .line 421
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mSuperScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 415
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 417
    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setFocusable(Z)V

    .line 465
    :try_start_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->unregisterListener()V

    .line 470
    return-void

    .line 466
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 436
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 437
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 458
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->unregisterListener()V

    .line 459
    return-void
.end method

.method public update(Landroid/view/View;II)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 451
    invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    .line 452
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V

    .line 453
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 445
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 446
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->registerListener(Landroid/view/View;)V

    .line 447
    return-void
.end method
