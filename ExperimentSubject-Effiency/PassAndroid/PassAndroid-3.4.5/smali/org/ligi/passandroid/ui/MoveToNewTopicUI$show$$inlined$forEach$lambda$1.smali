.class final Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "MoveToNewTopicUI.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/ui/MoveToNewTopicUI;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/String;

.field final synthetic $move$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $oldTopic$inlined:Ljava/lang/String;

.field final synthetic $suggestionButtonContainer$inlined:Landroid/view/ViewGroup;

.field final synthetic this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/ligi/passandroid/ui/MoveToNewTopicUI;Ljava/lang/String;Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->$it:Ljava/lang/String;

    iput-object p2, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->this$0:Lorg/ligi/passandroid/ui/MoveToNewTopicUI;

    iput-object p3, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->$oldTopic$inlined:Ljava/lang/String;

    iput-object p4, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->$suggestionButtonContainer$inlined:Landroid/view/ViewGroup;

    iput-object p5, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->$move$inlined:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->$move$inlined:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/ligi/passandroid/ui/MoveToNewTopicUI$show$$inlined$forEach$lambda$1;->$it:Ljava/lang/String;

    const-string v2, "it"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
