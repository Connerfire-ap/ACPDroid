.class final Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;
.super Ljava/lang/Object;
.source "AddToCalendar.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/functions/AddToCalendarKt;->tryAddDateToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
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
.field final synthetic $contextView:Landroid/view/View;

.field final synthetic $pass:Lorg/ligi/passandroid/model/pass/Pass;

.field final synthetic $timeSpan:Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;


# direct methods
.method constructor <init>(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    .locals 0

    iput-object p1, p0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iput-object p2, p0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;->$contextView:Landroid/view/View;

    iput-object p3, p0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;->$timeSpan:Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .prologue
    .line 21
    iget-object v0, p0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;->$pass:Lorg/ligi/passandroid/model/pass/Pass;

    iget-object v1, p0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;->$contextView:Landroid/view/View;

    iget-object v2, p0, Lorg/ligi/passandroid/functions/AddToCalendarKt$tryAddDateToCalendar$1;->$timeSpan:Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;

    # invokes: Lorg/ligi/passandroid/functions/AddToCalendarKt;->reallyAddToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V
    invoke-static {v0, v1, v2}, Lorg/ligi/passandroid/functions/AddToCalendarKt;->access$reallyAddToCalendar(Lorg/ligi/passandroid/model/pass/Pass;Landroid/view/View;Lorg/ligi/passandroid/model/pass/PassImpl$TimeSpan;)V

    return-void
.end method
