.class Lorg/telegram/ui/ThemingChatActivity$3$15;
.super Ljava/lang/Object;
.source "ThemingChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/ColorSelectorDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemingChatActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemingChatActivity$3;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemingChatActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lorg/telegram/ui/ThemingChatActivity$3;

    .prologue
    .line 696
    iput-object p1, p0, Lorg/telegram/ui/ThemingChatActivity$3$15;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ThemingChatActivity$3$15;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 699
    sput p1, Lorg/telegram/ui/ActionBar/Theme;->chatRBubbleColor:I

    .line 701
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->updateChatDrawablesColor()V

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/ThemingChatActivity$3$15;->this$1:Lorg/telegram/ui/ThemingChatActivity$3;

    iget-object v0, v0, Lorg/telegram/ui/ThemingChatActivity$3;->this$0:Lorg/telegram/ui/ThemingChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ThemingChatActivity$3$15;->val$key:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/ThemingChatActivity;->commitInt(Ljava/lang/String;I)V
    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ThemingChatActivity;->access$300(Lorg/telegram/ui/ThemingChatActivity;Ljava/lang/String;I)V

    .line 703
    return-void
.end method