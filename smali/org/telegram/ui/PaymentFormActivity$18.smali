.class Lorg/telegram/ui/PaymentFormActivity$18;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PaymentFormActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/PaymentFormActivity;

    .prologue
    .line 1462
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$18;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1465
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$18;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$18;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2600(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2602(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 1466
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$18;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Cells/TextCheckCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$18;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->saveCardInfo:Z
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2600(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 1467
    return-void

    .line 1465
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method