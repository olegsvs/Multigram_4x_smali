.class Lorg/telegram/ui/ChannelAdminLogActivity$14$3;
.super Ljava/lang/Object;
.source "ChannelAdminLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChannelAdminLogActivity$14;

.field final synthetic val$datePicker:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity$14;Landroid/widget/DatePicker;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ChannelAdminLogActivity$14;

    .prologue
    .line 938
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14$3;->this$1:Lorg/telegram/ui/ChannelAdminLogActivity$14;

    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14$3;->val$datePicker:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 941
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14$3;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getChildCount()I

    move-result v2

    .line 942
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 943
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity$14$3;->val$datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4, v0}, Landroid/widget/DatePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 944
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 945
    .local v3, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 946
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 948
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
