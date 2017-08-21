.class Lorg/telegram/messenger/LocaleController$2$1;
.super Ljava/lang/Object;
.source "LocaleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/LocaleController$2;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/LocaleController$2;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/LocaleController$2;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/messenger/LocaleController$2;

    .prologue
    .line 1515
    iput-object p1, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iput-object p2, p0, Lorg/telegram/messenger/LocaleController$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1518
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7, v10}, Lorg/telegram/messenger/LocaleController;->access$1002(Lorg/telegram/messenger/LocaleController;Z)Z

    .line 1519
    iget-object v6, p0, Lorg/telegram/messenger/LocaleController$2$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 1520
    .local v6, "res":Lorg/telegram/tgnet/TLRPC$Vector;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1521
    .local v5, "remoteLoaded":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/telegram/messenger/LocaleController$LocaleInfo;>;"
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1522
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 1523
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;

    .line 1524
    .local v3, "language":Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    new-instance v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;-><init>()V

    .line 1525
    .local v4, "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->name:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 1526
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->native_name:Ljava/lang/String;

    iput-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 1527
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;->lang_code:Ljava/lang/String;

    const/16 v8, 0x2d

    const/16 v9, 0x5f

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->shortName:Ljava/lang/String;

    .line 1528
    const-string/jumbo v7, "remote"

    iput-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    .line 1530
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$100(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v1

    .line 1531
    .local v1, "existing":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-nez v1, :cond_0

    .line 1532
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1533
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    :goto_1
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->remoteLanguages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    invoke-virtual {v4}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1535
    :cond_0
    iget-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    iput-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    .line 1536
    iget-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iput-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    .line 1537
    iget-object v7, v4, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    iput-object v7, v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;->pathToFile:Ljava/lang/String;

    goto :goto_1

    .line 1542
    .end local v1    # "existing":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v3    # "language":Lorg/telegram/tgnet/TLRPC$TL_langPackLanguage;
    .end local v4    # "localeInfo":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 1543
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1544
    .local v2, "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isBuiltIn()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isRemote()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1542
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1547
    :cond_3
    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 1548
    .restart local v1    # "existing":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    if-nez v1, :cond_2

    .line 1549
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->languages:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1550
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->languagesDict:Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    add-int/lit8 v0, v0, -0x1

    .line 1552
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$300(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v7

    if-ne v2, v7, :cond_2

    .line 1553
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$1100(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1554
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v8, v8, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->access$1100(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$100(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 1556
    :cond_4
    if-nez v2, :cond_5

    .line 1557
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v8, v8, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v9, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v9, v9, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->access$1100(Lorg/telegram/messenger/LocaleController;)Ljava/util/Locale;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/telegram/messenger/LocaleController;->access$1200(Lorg/telegram/messenger/LocaleController;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$100(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 1559
    :cond_5
    if-nez v2, :cond_6

    .line 1560
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    const-string/jumbo v8, "en"

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->access$100(Lorg/telegram/messenger/LocaleController;Ljava/lang/String;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v2

    .line 1562
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-virtual {v7, v2, v11}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 1563
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->reloadInterface:I

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1567
    .end local v1    # "existing":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    .end local v2    # "info":Lorg/telegram/messenger/LocaleController$LocaleInfo;
    :cond_7
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->access$200(Lorg/telegram/messenger/LocaleController;)V

    .line 1568
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v7

    sget v8, Lorg/telegram/messenger/NotificationCenter;->suggestedLangpack:I

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1569
    iget-object v7, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    iget-object v8, p0, Lorg/telegram/messenger/LocaleController$2$1;->this$1:Lorg/telegram/messenger/LocaleController$2;

    iget-object v8, v8, Lorg/telegram/messenger/LocaleController$2;->this$0:Lorg/telegram/messenger/LocaleController;

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->access$300(Lorg/telegram/messenger/LocaleController;)Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object v8

    invoke-virtual {v7, v8, v11}, Lorg/telegram/messenger/LocaleController;->applyLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;Z)V

    .line 1570
    return-void
.end method
