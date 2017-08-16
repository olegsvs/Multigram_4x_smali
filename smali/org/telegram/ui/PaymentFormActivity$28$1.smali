.class Lorg/telegram/ui/PaymentFormActivity$28$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$28;->onSuccess(Lcom/stripe/android/model/Token;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$28;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$28;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$28;

    .prologue
    .line 2278
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$28$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2281
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$28;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->goToNextStep()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$200(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 2282
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$28;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->showEditDoneProgress(ZZ)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$2400(Lorg/telegram/ui/PaymentFormActivity;ZZ)V

    .line 2283
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$28$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$28;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$28;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->setDonePressed(Z)V
    invoke-static {v0, v2}, Lorg/telegram/ui/PaymentFormActivity;->access$500(Lorg/telegram/ui/PaymentFormActivity;Z)V

    .line 2284
    return-void
.end method
