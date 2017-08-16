.class Lorg/telegram/ui/ThemingChatActivity$4;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ThemingChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ThemingChatActivity;

    .prologue
    .line 1389
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 1392
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ThemingChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1393
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return v0

    .line 1407
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->headerColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 1408
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatHeaderColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    .line 1500
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1409
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->headerGradientRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatHeaderGradient"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1411
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->headerGradientColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 1412
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatHeaderGradientColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1413
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->solidBGColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_5

    .line 1414
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatSolidBGColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    .line 1415
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    goto :goto_1

    .line 1416
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->gradientBGColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_6

    .line 1417
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatGradientBGColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    .line 1418
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    goto :goto_1

    .line 1419
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->gradientBGRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 1420
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatGradientBG"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1421
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->memberColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_8

    .line 1422
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatMemberColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1423
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->contactNameColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$2400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_9

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatContactNameColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 1425
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->rTextColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_a

    .line 1426
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatRTextColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1427
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->lTextColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_b

    .line 1428
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatLTextColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1429
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->selectedMessageBGColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_c

    .line 1430
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatSelectedMsgBGColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1431
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->nameColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_d

    .line 1432
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatNameColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1433
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->nameSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_e

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatNameSize"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1435
    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->statusColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_f

    .line 1436
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatStatusColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1437
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->onlineColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_10

    .line 1438
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatOnlineColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1439
    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->typingColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_11

    .line 1440
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatTypingColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1441
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->statusSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 1442
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatStatusSize"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1443
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->rTimeColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_13

    .line 1444
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatRTimeColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1445
    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->lTimeColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_14

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatLTimeColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1447
    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->commandColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_15

    .line 1448
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatCommandColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1449
    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->dateColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_16

    .line 1450
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatDateColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1451
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->checksColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_17

    .line 1452
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatChecksColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1453
    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->textSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_18

    .line 1454
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatTextSize"

    const/16 v2, 0x10

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetInt(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ThemingChatActivity;->access$7300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1455
    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->timeSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_19

    .line 1456
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatTimeSize"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1457
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->dateSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1a

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatDateSize"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1459
    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->dateBubbleColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$3700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1b

    .line 1460
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatDateBubbleColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1461
    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->sendColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1c

    .line 1462
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatSendIconColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1463
    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->editTextColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1d

    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1465
    :cond_1d
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->editTextSizeRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$6700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1e

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextSize"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1467
    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->editTextBGColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4200(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_1f

    .line 1468
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextBGColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1469
    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->editTextBGGradientColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4300(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_20

    .line 1470
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextBGGradentColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1471
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->editTextBGGradientRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$700(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_21

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEditTextBGGradient"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1473
    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->attachBGColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4400(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_22

    .line 1474
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachBGColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1475
    :cond_22
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->attachBGGradientRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_23

    .line 1476
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachBGGradient"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1477
    :cond_23
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->attachBGGradientColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4500(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_24

    .line 1478
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachBGGradientColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1479
    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->attachTextColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4600(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_25

    .line 1480
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatAttachTextColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1481
    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4800(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_26

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewBGColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1483
    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGGradientRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_27

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewBGGradient"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1485
    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->emojiViewBGGradientColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$4900(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_28

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewBGGradientColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1487
    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->emojiViewTabIconColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_29

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewTabIconColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1489
    :cond_29
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->emojiViewTabColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$5100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2a

    .line 1490
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatEmojiViewTabColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1491
    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->quickBarColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7000(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2b

    .line 1492
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatQuickBarColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1493
    :cond_2b
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    # getter for: Lorg/telegram/ui/ThemingChatActivity;->quickBarNamesColorRow:I
    invoke-static {v0}, Lorg/telegram/ui/ThemingChatActivity;->access$7100(Lorg/telegram/ui/ThemingChatActivity;)I

    move-result v0

    if-ne p3, v0, :cond_2c

    .line 1494
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    const-string/jumbo v1, "chatQuickBarNamesColor"

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1496
    :cond_2c
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1497
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$4;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->resetPref(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ThemingChatActivity;->access$7200(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
