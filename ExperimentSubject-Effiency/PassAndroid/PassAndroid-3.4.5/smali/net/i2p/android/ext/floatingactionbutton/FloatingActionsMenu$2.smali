.class Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$2;
.super Ljava/lang/Object;
.source "FloatingActionsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->createAddButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;


# direct methods
.method constructor <init>(Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu$2;->this$0:Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {v0}, Lnet/i2p/android/ext/floatingactionbutton/FloatingActionsMenu;->toggle()V

    .line 187
    return-void
.end method
