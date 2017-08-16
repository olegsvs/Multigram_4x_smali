.class Lorg/telegram/ui/PaymentFormActivity$13;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/common/api/BooleanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1051
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/BooleanResult;)V
    .locals 1
    .param p1, "booleanResult"    # Lcom/google/android/gms/common/api/BooleanResult;

    .prologue
    .line 1054
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/BooleanResult;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$13;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->showAndroidPay()V
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2700(Lorg/telegram/ui/PaymentFormActivity;)V

    .line 1061
    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    .prologue
    .line 1051
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/PaymentFormActivity$13;->onResult(Lcom/google/android/gms/common/api/BooleanResult;)V

    return-void
.end method
