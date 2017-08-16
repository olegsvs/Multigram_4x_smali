.class public Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsAdapter"
.end annotation


# instance fields
.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/DialogCell$CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 10
    .param p1, "this$0"    # Lorg/telegram/ui/ThemePreviewActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 424
    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 425
    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 429
    .local v1, "date":I
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 430
    .local v0, "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Eva Summer"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 431
    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 432
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 433
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 434
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 435
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 436
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 437
    iput v1, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 438
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 439
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 440
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 441
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 444
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Alexandra Smith"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 445
    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 446
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 447
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 448
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 449
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 450
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 451
    add-int/lit16 v2, v1, -0xe10

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 452
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 453
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 454
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 455
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 458
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Make Apple"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 459
    const-string/jumbo v2, "\ud83e\udd37\u200d\u2642\ufe0f Sticker"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 460
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 461
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 462
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 463
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 464
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 465
    add-int/lit16 v2, v1, -0x1c20

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 466
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 467
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 468
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 469
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 472
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Paul Newman"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 473
    const-string/jumbo v2, "Any ideas?"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 474
    iput v9, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 475
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 476
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 477
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 478
    iput v8, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 479
    add-int/lit16 v2, v1, -0x2a30

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 480
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 481
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 482
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 483
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 486
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Old Pirates"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 487
    const-string/jumbo v2, "Yo-ho-ho!"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 488
    const/4 v2, 0x4

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 489
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 490
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 491
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 492
    iput v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 493
    add-int/lit16 v2, v1, -0x3840

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 494
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 495
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 496
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 497
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 500
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Kate Bright"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 501
    const-string/jumbo v2, "Hola!"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 502
    const/4 v2, 0x5

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 503
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 504
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 505
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 506
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 507
    add-int/lit16 v2, v1, -0x4650

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 508
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 509
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 510
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 511
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 514
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Nick K"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 515
    const-string/jumbo v2, "These are not the droids you are looking for"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 516
    const/4 v2, 0x6

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 517
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 518
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 519
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 520
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 521
    add-int/lit16 v2, v1, -0x5460

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 522
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 523
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 524
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 525
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    .end local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    invoke-direct {v0}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    .line 528
    .restart local v0    # "customDialog":Lorg/telegram/ui/Cells/DialogCell$CustomDialog;
    const-string/jumbo v2, "Adler Toberg"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    .line 529
    const-string/jumbo v2, "Did someone say peanut butter?"

    iput-object v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    .line 530
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    .line 531
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    .line 532
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    .line 533
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    .line 534
    iput v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    .line 535
    add-int/lit16 v2, v1, -0x6270

    iput v2, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    .line 536
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    .line 537
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    .line 538
    iput-boolean v6, v0, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    .line 539
    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 575
    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 576
    const/4 v0, 0x1

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v0, 0x1

    .line 549
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 566
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_0

    .line 567
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    .line 568
    .local v0, "cell":Lorg/telegram/ui/Cells/DialogCell;
    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 569
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V

    .line 571
    .end local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_0
    return-void

    .line 568
    .restart local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 556
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    .line 560
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    .line 557
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 558
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method
