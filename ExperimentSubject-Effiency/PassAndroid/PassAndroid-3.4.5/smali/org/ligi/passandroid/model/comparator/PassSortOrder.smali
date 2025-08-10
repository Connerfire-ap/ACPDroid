.class public final enum Lorg/ligi/passandroid/model/comparator/PassSortOrder;
.super Ljava/lang/Enum;
.source "PassSortOrder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/ligi/passandroid/model/comparator/PassSortOrder;",
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ligi/passandroid/model/comparator/PassSortOrder;",
        "",
        "int",
        "",
        "(Ljava/lang/String;II)V",
        "getInt",
        "()I",
        "toComparator",
        "Ljava/util/Comparator;",
        "Lorg/ligi/passandroid/model/pass/Pass;",
        "DATE_DESC",
        "DATE_ASC",
        "TYPE",
        "DATE_DIFF",
        "PassAndroid-3.4.5_noMapsNoAnalyticsForFDroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ligi/passandroid/model/comparator/PassSortOrder;

.field public static final enum DATE_ASC:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

.field public static final enum DATE_DESC:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

.field public static final enum DATE_DIFF:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

.field public static final enum TYPE:Lorg/ligi/passandroid/model/comparator/PassSortOrder;


# instance fields
.field private final int:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    new-instance v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    const-string v2, "DATE_DESC"

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->DATE_DESC:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    aput-object v1, v0, v3

    new-instance v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    const-string v2, "DATE_ASC"

    .line 8
    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v3}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->DATE_ASC:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    aput-object v1, v0, v4

    new-instance v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    const-string v2, "TYPE"

    .line 9
    invoke-direct {v1, v2, v5, v4}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->TYPE:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    aput-object v1, v0, v5

    new-instance v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    const-string v2, "DATE_DIFF"

    .line 10
    invoke-direct {v1, v2, v6, v5}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->DATE_DIFF:Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    aput-object v1, v0, v6

    sput-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->$VALUES:[Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .param p3, "int"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->int:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ligi/passandroid/model/comparator/PassSortOrder;
    .locals 1

    const-class v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    return-object v0
.end method

.method public static values()[Lorg/ligi/passandroid/model/comparator/PassSortOrder;
    .locals 1

    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->$VALUES:[Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    invoke-virtual {v0}, [Lorg/ligi/passandroid/model/comparator/PassSortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ligi/passandroid/model/comparator/PassSortOrder;

    return-object v0
.end method


# virtual methods
.method public final getInt()I
    .locals 1

    .prologue
    .line 6
    iget v0, p0, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->int:I

    return v0
.end method

.method public final toComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/ligi/passandroid/model/pass/Pass;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lorg/ligi/passandroid/model/comparator/PassSortOrder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lorg/ligi/passandroid/model/comparator/PassSortOrder;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 14
    :pswitch_0
    new-instance v0, Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;

    invoke-direct {v0}, Lorg/ligi/passandroid/model/comparator/PassByTypeFirstAndTimeSecondComparator;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    .line 17
    :goto_0
    return-object v0

    .line 15
    :pswitch_1
    new-instance v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;

    sget-object v1, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->Companion:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;->getDIRECTION_DESC()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;-><init>(I)V

    check-cast v0, Ljava/util/Comparator;

    goto :goto_0

    .line 16
    :pswitch_2
    new-instance v0, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;

    invoke-direct {v0}, Lorg/ligi/passandroid/model/comparator/PassTemporalDistanceComparator;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    goto :goto_0

    .line 17
    :pswitch_3
    new-instance v0, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;

    sget-object v1, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;->Companion:Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;

    invoke-virtual {v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator$Companion;->getDIRECTION_ASC()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/ligi/passandroid/model/comparator/DirectionAwarePassByTimeComparator;-><init>(I)V

    check-cast v0, Ljava/util/Comparator;

    goto :goto_0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
