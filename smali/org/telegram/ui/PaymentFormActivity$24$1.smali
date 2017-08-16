.class Lorg/telegram/ui/PaymentFormActivity$24$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$24;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$24;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$24;

    .prologue
    .line 1750
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$24$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1753
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$24$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$24;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$24$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$24;

    iget-object v1, v1, Lorg/telegram/ui/PaymentFormActivity$24;->val$totalPrice:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/PaymentFormActivity;->showPayAlert(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PaymentFormActivity;->access$3900(Lorg/telegram/ui/PaymentFormActivity;Ljava/lang/String;)V

    .line 1754
    return-void
.end method
