.class Lorg/telegram/ui/ChangeUserActivity$4;
.super Ljava/lang/Object;
.source "ChangeUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeUserActivity;->showAlertAddUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeUserActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeUserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/telegram/ui/ChangeUserActivity;

    .prologue
    .line 172
    iput-object p1, p0, Lorg/telegram/ui/ChangeUserActivity$4;->this$0:Lorg/telegram/ui/ChangeUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lorg/telegram/ui/ChangeUserActivity$4;->this$0:Lorg/telegram/ui/ChangeUserActivity;

	invoke-virtual {p0}, Lorg/telegram/ui/ChangeUserActivity;->addUser()V
	
    invoke-virtual {v0}, Lorg/telegram/ui/ChangeUserActivity;->restart()V

    .line 175
    return-void
.end method
