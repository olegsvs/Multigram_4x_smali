.class Lorg/telegram/messenger/voip/VoIPService$7$1$1;
.super Ljava/lang/Object;
.source "VoIPService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/voip/VoIPService$7$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/voip/VoIPService$7$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0
    .param p1, "this$2"    # Lorg/telegram/messenger/voip/VoIPService$7$1;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 526
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v1, :cond_3

    .line 527
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/TLRPC$PhoneCall;

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {v2, v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1402(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$PhoneCall;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 528
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPService$7$1;->val$salt:[B

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1502(Lorg/telegram/messenger/voip/VoIPService;[B)[B

    .line 529
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/16 v2, 0xd

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1600(Lorg/telegram/messenger/voip/VoIPService;I)V

    .line 530
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1700(Lorg/telegram/messenger/voip/VoIPService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    .line 580
    :goto_0
    return-void

    .line 534
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1800(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->call:Lorg/telegram/tgnet/TLRPC$PhoneCall;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1400(Lorg/telegram/messenger/voip/VoIPService;)Lorg/telegram/tgnet/TLRPC$PhoneCall;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 535
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1800(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PhoneCall;

    .line 536
    .local v0, "call":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v2, v2, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/TLRPC$PhoneCall;)V

    goto :goto_1

    .line 538
    .end local v0    # "call":Lorg/telegram/tgnet/TLRPC$PhoneCall;
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1800(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 540
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$7$1$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$7$1$1$1;-><init>(Lorg/telegram/messenger/voip/VoIPService$7$1$1;)V

    # setter for: Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$1902(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 567
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # getter for: Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1900(Lorg/telegram/messenger/voip/VoIPService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 569
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "PARTICIPANT_VERSION_OUTDATED"

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 570
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v2, -0x1

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed(I)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$2000(Lorg/telegram/messenger/voip/VoIPService;I)V

    goto/16 :goto_0

    .line 571
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v2, 0x193

    if-ne v1, v2, :cond_5

    const-string/jumbo v1, "USER_PRIVACY_RESTRICTED"

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 572
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v2, -0x2

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed(I)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$2000(Lorg/telegram/messenger/voip/VoIPService;I)V

    goto/16 :goto_0

    .line 573
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 v2, 0x196

    if-ne v1, v2, :cond_6

    .line 574
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v2, -0x3

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed(I)V
    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->access$2000(Lorg/telegram/messenger/voip/VoIPService;I)V

    goto/16 :goto_0

    .line 576
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error on phone.requestCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService$7$1$1;->this$2:Lorg/telegram/messenger/voip/VoIPService$7$1;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7$1;->this$1:Lorg/telegram/messenger/voip/VoIPService$7;

    iget-object v1, v1, Lorg/telegram/messenger/voip/VoIPService$7;->this$0:Lorg/telegram/messenger/voip/VoIPService;

    # invokes: Lorg/telegram/messenger/voip/VoIPService;->callFailed()V
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPService;->access$1100(Lorg/telegram/messenger/voip/VoIPService;)V

    goto/16 :goto_0
.end method