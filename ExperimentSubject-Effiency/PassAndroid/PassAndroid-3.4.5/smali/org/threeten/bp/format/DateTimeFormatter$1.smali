.class final Lorg/threeten/bp/format/DateTimeFormatter$1;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Lorg/threeten/bp/temporal/TemporalQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/threeten/bp/temporal/TemporalQuery",
        "<",
        "Lorg/threeten/bp/Period;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 934
    invoke-virtual {p0, p1}, Lorg/threeten/bp/format/DateTimeFormatter$1;->queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Period;

    move-result-object v0

    return-object v0
.end method

.method public queryFrom(Lorg/threeten/bp/temporal/TemporalAccessor;)Lorg/threeten/bp/Period;
    .locals 1
    .param p1, "temporal"    # Lorg/threeten/bp/temporal/TemporalAccessor;

    .prologue
    .line 936
    instance-of v0, p1, Lorg/threeten/bp/format/DateTimeBuilder;

    if-eqz v0, :cond_0

    .line 937
    check-cast p1, Lorg/threeten/bp/format/DateTimeBuilder;

    .end local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    iget-object v0, p1, Lorg/threeten/bp/format/DateTimeBuilder;->excessDays:Lorg/threeten/bp/Period;

    .line 939
    :goto_0
    return-object v0

    .restart local p1    # "temporal":Lorg/threeten/bp/temporal/TemporalAccessor;
    :cond_0
    sget-object v0, Lorg/threeten/bp/Period;->ZERO:Lorg/threeten/bp/Period;

    goto :goto_0
.end method
