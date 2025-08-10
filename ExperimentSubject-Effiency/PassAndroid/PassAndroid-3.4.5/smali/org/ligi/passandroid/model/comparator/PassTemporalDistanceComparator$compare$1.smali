.class final Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PassTemporalDistanceComparator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;->compare(Lorg/ligi/passandroid/model/pass/Pass;Lorg/ligi/passandroid/model/pass/Pass;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2",
        "<",
        "Lorg/threeten/bp/ZonedDateTime;",
        "Lorg/threeten/bp/ZonedDateTime;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "leftDate",
        "Lorg/threeten/bp/ZonedDateTime;",
        "rightDate",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;

    invoke-direct {v0}, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;-><init>()V

    sput-object v0, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;->INSTANCE:Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;)I
    .locals 3
    .param p1, "leftDate"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "rightDate"    # Lorg/threeten/bp/ZonedDateTime;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    const-string v2, "leftDate"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rightDate"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lorg/threeten/bp/LocalDateTime;->now()Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/temporal/Temporal;

    check-cast p1, Lorg/threeten/bp/temporal/Temporal;

    .end local p1    # "leftDate":Lorg/threeten/bp/ZonedDateTime;
    invoke-static {v2, p1}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->abs()Lorg/threeten/bp/Duration;

    move-result-object v0

    .line 13
    .local v0, "durationLeft":Lorg/threeten/bp/Duration;
    invoke-static {}, Lorg/threeten/bp/LocalDateTime;->now()Lorg/threeten/bp/LocalDateTime;

    move-result-object v2

    check-cast v2, Lorg/threeten/bp/temporal/Temporal;

    check-cast p2, Lorg/threeten/bp/temporal/Temporal;

    .end local p2    # "rightDate":Lorg/threeten/bp/ZonedDateTime;
    invoke-static {v2, p2}, Lorg/threeten/bp/Duration;->between(Lorg/threeten/bp/temporal/Temporal;Lorg/threeten/bp/temporal/Temporal;)Lorg/threeten/bp/Duration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/threeten/bp/Duration;->abs()Lorg/threeten/bp/Duration;

    move-result-object v1

    .line 15
    .local v1, "durationRight":Lorg/threeten/bp/Duration;
    invoke-virtual {v0, v1}, Lorg/threeten/bp/Duration;->compareTo(Lorg/threeten/bp/Duration;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lorg/threeten/bp/ZonedDateTime;

    check-cast p2, Lorg/threeten/bp/ZonedDateTime;

    invoke-virtual {p0, p1, p2}, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator$compare$1;->invoke(Lorg/threeten/bp/ZonedDateTime;Lorg/threeten/bp/ZonedDateTime;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
