.class Lorg/telegram/ui/PaymentFormActivity$7;
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
    .line 863
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 866
    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2000(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2002(Lorg/telegram/ui/PaymentFormActivity;Z)Z

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->checkCell1:Lorg/telegram/ui/Cells/TextCheckCell;
    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$2100(Lorg/telegram/ui/PaymentFormActivity;)Lorg/telegram/ui/Cells/TextCheckCell;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PaymentFormActivity$7;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    # getter for: Lorg/telegram/ui/PaymentFormActivity;->saveShippingInfo:Z
    invoke-static {v1}, Lorg/telegram/ui/PaymentFormActivity;->access$2000(Lorg/telegram/ui/PaymentFormActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 868
    return-void

    .line 866
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method