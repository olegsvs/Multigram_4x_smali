.class Lorg/telegram/ui/PaymentFormActivity$14$1;
.super Ljava/lang/Object;
.source "PaymentFormActivity.java"

# interfaces
.implements Lorg/telegram/ui/CountrySelectActivity$CountrySelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PaymentFormActivity$14;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PaymentFormActivity$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PaymentFormActivity$14;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/PaymentFormActivity$14;

    .prologue
    .line 1112
    iput-object p1, p0, Lorg/telegram/ui/PaymentFormActivity$14$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectCountry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "shortName"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget-object v0, p0, Lorg/telegram/ui/PaymentFormActivity$14$1;->this$1:Lorg/telegram/ui/PaymentFormActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/PaymentFormActivity$14;->this$0:Lorg/telegram/ui/PaymentFormActivity;

    invoke-static {v0}, Lorg/telegram/ui/PaymentFormActivity;->access$1200(Lorg/telegram/ui/PaymentFormActivity;)[Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    return-void
.end method
